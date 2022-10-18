// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    uint[] public arr = [1,3,4,5,6,78];

    function mem() public view{
        uint[] memory arr1 = arr;
        arr1[2] = 1000;
    }
    function stor() public{
        uint[] storage arr2 = arr;
        arr2[2] = 900;
    }
    function CALLDATA(uint[] calldata arr10) public pure returns(uint[] calldata){
        return arr10;
    }
}