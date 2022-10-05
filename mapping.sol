// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract map{
    mapping(int=>string) public new_roll;
    function setter(int key, string memory value) public{
        new_roll[key] = value;
    }
}