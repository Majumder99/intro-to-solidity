// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract map{
    struct Human{
        int roll;
        string name;
    }
    mapping(int=>Human) public human_info;
    function setter(int key, int _roll, string memory _name) public{
        human_info[key] = Human(_roll, _name);
    }
}