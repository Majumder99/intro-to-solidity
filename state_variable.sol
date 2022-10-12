// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;

contract sourav{
    //we can declare state variable in three ways
    //state variables directly stores value in blockchain
    int public age = 1000; // one way

    //2nd way
    constructor(int newage){
        age = newage;
    }

    //third way
    function setAge() public{
        age = 10;
    }
}