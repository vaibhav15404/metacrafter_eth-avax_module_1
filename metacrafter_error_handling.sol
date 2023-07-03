// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Error_Handling {
   
    function test_Assert(uint num) public pure{
        assert(num!=0);
    }

      uint number=5;

     function test_Require(uint a) public view returns (uint){
        require(a>0,"Value of 'a' should be greater than zero");
        return a*number;

    }

    function test_Revert(uint _num, uint _deno) public pure returns (uint){
        if(_num<_deno){
           
            revert("Numerator should be greater than denomenator");
            
        }
        return _num/_deno;
       

    }
   

}
