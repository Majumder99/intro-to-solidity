// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    function keccak(uint x, string memory name, address add) public pure returns(bytes32){
        return keccak256(abi.encode(x, name, add));
    }
    function keccak2(uint x, string memory name, address add) public pure returns(bytes32){
        return keccak256(abi.encodePacked(x, name, add));
    }
    function sha1(uint x, string memory name, address add) public pure returns(bytes32){
        return sha256(abi.encode(x, name, add));
    }
    function sha2(uint x, string memory name, address add) public pure returns(bytes32){
        return sha256(abi.encodePacked(x, name, add));
    }
    function ripemd1(uint x, string memory name, address add) public pure returns(bytes20){
        return ripemd160(abi.encode(x, name, add));
    }
    function ripemd2(uint x, string memory name, address add) public pure returns(bytes20){
        return ripemd160(abi.encodePacked(x, name, add));
    }
}