// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    address public owner;
    uint public age = 20;
    constructor(){
        owner = msg.sender;
    }
    function checkOwner() public{
        require(owner == msg.sender, "You are not the owner");
        age = age + 25;
    }
}