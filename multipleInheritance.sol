// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    uint public a;
    constructor(){
        a = 200;
    }
}
contract B is A{
    constructor(){
        a = 400;
    }
}
contract C is A, B{
    // constructor(){
    //     a = 600;
    // }
}