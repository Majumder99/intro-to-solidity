// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    address payable public owner = payable(msg.sender);
    constructor() payable{

    }
    function sendEth() public payable{

    }
    function checBal() public view returns(uint) {
        return address(this).balance;
    }
    function checAcc() public view returns(address) {
        return address(this);
    }
}