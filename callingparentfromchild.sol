// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract A{
    event func1(string name, uint age);
    function fun1() public virtual {
        emit func1("sourav", 22);
    }
}
contract B is A{
    function fun1() public virtual override{
        emit func1("majumder", 23);
    }
}
contract C is A{
    function fun1() public virtual override{
        // emit func1("bonding", 24);
        A.fun1();//direct calling
    }
}
contract D is C,B{
    function fun1() public override(B,C){
        // emit func1("i am D", 24);
        super.fun1();//call B first
        //super calling always call the function from right most. 
    }
}