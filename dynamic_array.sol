// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract dynamicArray{
    uint [] public arr;
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