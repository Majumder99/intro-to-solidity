// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    address public constant owner1 = address(2);
    address public immutable owner2;
    address public  owner3 = address(2);
    constructor(address a){
        owner2 = a;
    }
    function I() public view returns(address){
        return owner2;
    }
    function S() public view returns(address){
        return owner3;
    }
    function C() public pure returns(address){
        return owner1;
    }
}