// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract array{
    uint[5] public ar = [1,2,3,4,5];
    function settter(uint index, uint value) public{
        ar[index] = value;
    }
    function length() public view returns(uint){
        return ar.length;
    }
}