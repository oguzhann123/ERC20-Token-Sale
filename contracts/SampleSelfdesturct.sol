// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;



contract Selfdestruct{

receive() external payable {}

    function destroySmartContract() public {
       selfdestruct(payable (msg.sender));
    }
 




}