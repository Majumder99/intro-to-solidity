// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract  dynamic_bytes_array{
    bytes public b1;
    function pushElement() public {
        b1.push('x');
    }
    function indexElement(uint i) public view returns(bytes1){
        return b1[i];
    }
    function deleteElement() public{
        b1.pop();
    }
    function lengthBytes() public view returns(uint){
        return b1.length;
    }
}