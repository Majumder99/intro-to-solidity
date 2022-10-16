// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract visible{
    uint private x;
    uint public y;
    uint internal z;

    function check1() public pure returns(string memory){
        return 'public';
    }
    function check2() private pure returns(string memory){
        return 'private';
    }
    function check3() external pure returns(string memory){
        return 'external';
    }
    function check4() internal pure returns(string memory){
        return 'internal';
    }
    function checkall() public view returns(uint){
        return x;
    }
}