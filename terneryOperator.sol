// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.4.0 < 0.9.0;

contract terneryOp{
    function terneryOpp(uint x) public pure returns(string memory){
        string memory result = x > 10 ? "Greater" : "Lower";
        return result;
    }
}