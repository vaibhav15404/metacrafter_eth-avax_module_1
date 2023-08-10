//  write a smart contract that implements the require(), assert() and revert() funcitons.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract avax_module1{
    
    address public Creator = msg.sender;
    uint public Age = 10;

    // This is  require() function
    function Require_Function(uint num) public{
        require(num!=0,"Age should be more than zero");
        Age += num;
    }

    // This is  revert() function
    function revertFunction(uint num) public{
        Age += num;
        if(num<=0){
            // revert throwError("Value should be greater than 0. Transaction is set to its initial state.",msg.sender);
            revert("value should be more than zero");
        }
    }

    // T customize error for revert
    error throwError(string,address);

    //  use of assert
    function Check_Creator() public view{
        assert(Creator==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

    function Get_Age() public view returns (uint){
        return Age;
    }
}
