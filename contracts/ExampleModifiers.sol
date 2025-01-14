// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
 import "./Ownable.sol";

contract InheritanceModifierExample is Owner{

mapping(address=>uint)  public tokenBalance;

//address owner;
uint tokenPrice = 1 ether;

constructor(){ 
   // owner = msg.sender;
    tokenBalance[msg.sender]=100;
}

// modifier onlyOnwer(){
//     require(msg.sender == owner, " You are not allowed.");
//   _;
// }

function createNewToken() public onlyOnwer{
//require(msg.sender == owner, " You are not allowed.");
tokenBalance[owner]++;

}
function burnToken() public onlyOnwer  {
   // require(msg.sender== owner, " You are not allowed.");
    tokenBalance[owner]--;
}

function purchaseToken() public  payable {
    require((tokenBalance[owner]*tokenPrice)/ msg.value > 0,"not enough tokens");
    tokenBalance[owner]-=msg.value /tokenPrice; 
    tokenBalance[msg.sender]+=msg.value / tokenPrice;
    

}

function sendToken( address _to, uint _amount) public{
    require(tokenBalance[msg.sender]>=_amount," nOT enough tokens");
    tokenBalance[msg.sender]-=_amount;
    tokenBalance[_to]+=_amount;
}






}