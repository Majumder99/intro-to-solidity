// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;

contract dynamicArray{
    uint [] public arr;
    uint [] public a = [10,20,30,40,50];
    function returnArray() public view returns(uint[] memory){
        return a;
    }
    
    function push(uint item) public{
        arr.push(item);
    }
    function pop() public{
        arr.pop();
    }
    function len()  public view returns(uint){
        return arr.length;
    }
}