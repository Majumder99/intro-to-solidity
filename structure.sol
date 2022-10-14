// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

struct Emp{
    string name;
    uint age;
    address acc;
}

contract newEmp{
    Emp[] public emp;
    function setEmp() public{
        Emp memory emp1 = Emp("Sourav", 24, 0x617F2E2fD72FD9D5503197092aC168c91465E7f2);
        Emp memory emp2 = Emp({name: "Majumder", acc: 0x17F6AD8Ef982297579C203069C1DbfFE4348c372, age: 21});
        Emp memory emp3;
        emp3.name = "Naina";
        emp3.age = 31;
        emp3.acc = msg.sender;

        emp.push(emp1);
        emp.push(emp2);
        emp.push(emp3);
    }
}
contract forConstructor{
    Emp public emp0;
    constructor(string memory name, uint age, address acc){
        emp0.name = name; 
        emp0.age = age;
        emp0.acc = acc;
    }
     function updateEmp() public{
        Emp memory emp_temp;
        emp_temp = emp0;
        emp0.name = "Tori";
    }
}