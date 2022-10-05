// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract for_loop{
    uint [4] public arr;
    function for_for_loop() public{
        for(uint i = 0 ; i < arr.length; i++){
            arr[i] = i;
        }
    }
}