// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract myContract{

    uint public myUint = 123;

    function setMyUint(uint _uint) public {
        myUint=_uint;
    }
}