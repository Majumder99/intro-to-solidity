// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.5.0 <= 0.9.0;

contract local{
    int public a;
   function getA()  public view returns(bool){ 
       bool b;
       bool c;
       bool g;
       bool h;
       b = a < 2;
       c = 4 <= 4;
       g = 4 != 7;
       h = 4 >= 5;
       return h;
   }
}