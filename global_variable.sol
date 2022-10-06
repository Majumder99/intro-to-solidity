// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract global_variable{
    function setter() public view returns(uint , uint, address, uint){
        return (block.number, block.timestamp, msg.sender, block.gaslimit);
    }
}