// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 < 0.9.0;

contract noname{
    int age ;
    function getter() public view returns(int){
        return age;
    }
    function setter(int newage) public {
        age = age + newage;
    }
}