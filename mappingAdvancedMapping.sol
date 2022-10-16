// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.4.0 < 0.9.0;


struct customer_info{
    string name;
    uint age;
    uint etherAmount;
    address addOfCustomer;
}


contract normalMap{
   mapping(uint=>string) public emp_info;
   function setter(uint index, string memory name) public{
    emp_info[index] = name;
   }
   function getter(uint index) public view returns(string memory){
    return emp_info[index];
   }
}

contract advancedMap{
    mapping(address=>customer_info) public emp_info;
    function setter(string memory name, uint age, uint etherAmount, address addOfCustomer) public{
        emp_info[msg.sender] = customer_info(name, age, emp_info[msg.sender].etherAmount + etherAmount, addOfCustomer);
    }
    function delCus() public{
        delete emp_info[msg.sender];
    }
    function retAdd() public view returns(address){
        return address(this);
    }
}