// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    event checkEvent(string, uint, address, bytes);
    //we can use this only to accept data
    fallback() external{
        emit checkEvent("hello from fallback", 0, 0x17F6AD8Ef982297579C203069C1DbfFE4348c372, msg.data);
    }
    //we can use this only to accept data and ether 
    fallback() external payable{
        emit checkEvent("hello from fallback", msg.value, 0x17F6AD8Ef982297579C203069C1DbfFE4348c372, msg.data);
    }
    //we can use this only to accept ether 
    receive() external payable{
        emit checkEvent("hello from receive", msg.value, 0x17F6AD8Ef982297579C203069C1DbfFE4348c372, "");
    }
    function checkBal() public view returns(uint){
        return address(this).balance;
    }
}