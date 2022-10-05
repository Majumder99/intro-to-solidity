// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.5.0 <= 0.9.0;

contract  dynamic_bytes_array{
    bytes public b1 = 'abc';
    function pushElement() public {
        b1.push('d');
    }
    function indexElement(uint i) public view returns(bytes1){
        return b1[i];
    }
}