// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract sendEth{
    receive() external payable{}
    event data1(bytes);

    function SEND(address payable add) public payable{
        bool sent = add.send(1 ether);
        require(sent, "Gas is out of limit");
    }
    function TRANSFER(address payable add) public payable{
        add.transfer(msg.value);//this won't decrese the contract value
    }
    function CALL(address payable add) public payable{
        // (bool sent, bytes data) = add.call{value:1 ether, gas: give the gas limit}("data");
        (bool sent, bytes memory data) = add.call{value:1 ether}("");
        require(sent, "Gas is out of limit");
        emit data1(data);
    }
    function checkBak() public view returns(uint){
        return address(this).balance;
    }
}


contract getEth{
    receive() external payable{}
    function checkBak() public view returns(uint){
        return address(this).balance;
    }
}