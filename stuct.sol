// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

struct Student{
    int roll;
    string name;
}

contract structure{
    Student public s1;
    constructor(int _roll, string memory _name){
        s1.roll = _roll;
        s1.name = _name;
    }
    function change(int _roll, string memory _name) public{
        Student memory new_student = Student({
            roll:_roll,
            name:_name
        });
        s1 = new_student;
    }
}