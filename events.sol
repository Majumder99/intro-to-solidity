// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract chatApp{
    event chat(address from, address to, string  message);
    function setValue(address _to, string memory newmsg) public{
        emit chat(msg.sender, _to, newmsg);
    }
    //to indexing
    event chatN(address indexed from, address to, string  message);
    function setValueN(address _to, string memory newmsg) public{
        emit chatN(msg.sender, _to, newmsg);
    }
}