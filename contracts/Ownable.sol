// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Owner{

address owner; 

constructor(){
    owner = msg.sender;
}

modifier onlyOnwer(){
    require(msg.sender == owner, " You are not allowed.");
  _;
}





}