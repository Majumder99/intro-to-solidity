// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    uint public a;
    constructor(){
        a = 200;
    }
    function setter() public pure virtual returns(string memory){
        return "I am in A";
    }
}
contract B is A{
    constructor(){
        a = 400;
    }
        function setter() public pure virtual override returns(string memory){
        return "I am in B";
    }
}
contract C is A, B{
    // constructor(){
    //     a = 600;
    // }
    // We need to must override the same function it is mandatory
    //we can also write the same value of A or B
        function setter() public pure override(A,B) returns(string memory){
        return "I am in C";
    }
}