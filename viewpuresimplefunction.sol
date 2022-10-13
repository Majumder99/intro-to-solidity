// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.4.0 < 0.9.0;

contract viewandpure{
    uint public age = 20;
    function viewfunc() public view returns(uint) {
        return age;
    }
    function purefunc(uint i) public pure returns(uint) {
        return i;
    }
    function simple() public {
      age = age + 20;
    }
}