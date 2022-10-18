// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    modifier someCode(){
        for (uint256 index = 0; index < 10; index++) {
            
        }
        _;
    }
    function setter() public someCode pure returns(string memory){
        return "I am setter";
    }

    uint public age = 20;
    modifier changeAge(uint t){
        age = age + t;
        _;
    }
    function chngAge(uint x) public changeAge(x){
        
    }
}

