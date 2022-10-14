// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;


contract array{
    uint[5] public ar = [1,2,3,4,5];
    uint [5] public a;
    constructor(){
        ar = [10,20,30,40,50];
    }
    function addItemUsingLoop(uint x) public returns(uint[5] memory){
        for (uint index = 0; index < 5; index++) {
            a[index] = x + index;
        }
        return a;
    }
    //delete
    function delArr() public{
        delete ar[2];
    }
    function settter(uint index, uint value) public{
        ar[index] = value;
    }
    function length() public view returns(uint){
        return ar.length;
    }
}