// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    uint public a;
    constructor(uint x){
        a = x;
    }
}
contract B {
    uint public b;
    constructor(uint x){
        b = x;
    }
}
contract C is A(20), B(40){
    
}
contract D is A,B{
    constructor()A(10) B(20){}
}
contract E is A, B{
    constructor(uint x, uint y)A(x) B(y){
        
    }
}
contract F is A, B{
   constructor(uint x)A(x) B(50){
        
    }
}