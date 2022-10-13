// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.0;

contract breakcontinue{
    function breakCon() public pure returns(uint){
        uint count = 0;
        for (uint256 index = 0; index < 10; index++) {
         if(index == 8){
            continue;
         }   
         else if(index == 9){
            break;
         }else{
            count = count + index;
         }
        }
        return count;
    }
}
