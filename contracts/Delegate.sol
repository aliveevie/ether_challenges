// SPDX-License-Identifier: MIT
pragma solidity 0.8;

// Library contract
contract Logic {
    uint public num;

    function setNum(uint _num) public {
        num = _num;
    }
}

// Proxy contract
contract Proxy {
    uint public num;

    function setNum(address _logic, uint _num) public {
        (bool success, ) = _logic.delegatecall(
            abi.encodeWithSignature("setNum(uint256)", _num)
        );
        require(success, "delegatecall failed");
    }
}
