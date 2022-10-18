// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    address public owner;
    uint public age = 20;
    error errorThrowing(string, address);
    constructor(){
        owner = msg.sender;
    }
    function checkOwner() public{
        if(owner != msg.sender){
            revert errorThrowing("Error is happing", msg.sender);
        }
        age = age + 25;
    }
}