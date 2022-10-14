// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;

contract dynamicArray{
    uint [] public arr;
    uint [5] public a;
    constructor(){
        arr = [10,20,30,40,50];
    }
    function addItemUsingLoop(uint x) public returns(uint[5] memory){
        for (uint index = 0; index < 5; index++) {
            a[index] = x + index;
        }
        return a;
    }
    function push(uint item) public{
        arr.push(item);
    }
    function pop() public{
        arr.pop();
    }
    //delete
    function delArr() public{
        delete arr[2];
    }
    function len()  public view returns(uint){
        return arr.length;
    }
}