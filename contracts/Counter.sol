// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Counter {
    uint public num;
    address public sender;
    uint public value;

    function setVars(uint _num) public payable virtual {
        require(_num > 100, "argument must be greater than 100");
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}

contract ImporovedCounter is Counter {
    function setVars(uint _num) public payable override {
        super.setVars(_num);
    }
}