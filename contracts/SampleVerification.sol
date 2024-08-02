// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract MyContract{

mapping (address => uint) public balance;

constructor(){
    balance[msg.sender] = 100;
}

function transfer(address _to, uint _amount) public {
    balance[msg.sender]-=_amount;
    balance[_to]+=_amount;
}

function someCrypticFuncwewfBC (address _addr) public  {
     balance[_addr] =5;
}


}