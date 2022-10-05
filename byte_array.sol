// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract byteArray{
    bytes3 public b1;
    bytes4 public b2;
    function setter() public{
        b2="abcd";
    }
}