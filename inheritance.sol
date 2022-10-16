// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    function n() public pure virtual returns(string memory){
        return 'I am in A';
    }
}
contract B is A{
    function n() public pure virtual override returns(string memory){
        return 'I am in B';
    }
}
contract C is  B{
    function n() public pure override returns(string memory){
        return 'I am in C';
    }
}