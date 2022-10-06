// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract transaction{
    address payable  user = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    //payable means pay this contract
    function payEther() public payable{

    }
    //we will check this contract balance
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function sendEther() public{
        user.transfer(1 ether);
    }
}