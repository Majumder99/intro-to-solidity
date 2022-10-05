// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract while_loop{
    uint[4] public arr;
    uint public count;
    
    function for_while_loop() public{
        while(count<arr.length){
            arr[count] = count;
            count++;
        }
    }
}