// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract storageandmemory{
    string[] public name = ["sourav", "majumder", "age"];
    function setter() public view{
        string[] memory s1 = name;
        s1[0] = "akash";
    }
    // storage works as a reference , we can use it to access value and permanently change it
    function anothersetter() public{
        string[] storage  s1  =name;
        s1[0] ="akash";
    }
}