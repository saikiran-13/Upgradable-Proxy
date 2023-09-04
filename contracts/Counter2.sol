//SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "./Proxiable.sol";
import "hardhat/console.sol";
contract Counter is Proxiable{
    uint public count;
    string public Number;


    function initialize() public{
        require(msg.sender!=address(0),"Zeroth Address.Invalid!!");
        Number = "Even";
    }

    function updateCode(address newCode) external  {
        updateCodeAddress(newCode);
    }

    function reset() external {
        count = 0;
    }

    function checkNumber() external view returns(string memory){
        return count%2==0?"Even":"Odd";
    }

    function incrementCount() external {
        count+=1;
    }

    function decrementCount() external{
        count-=1;
    }

    function setCount(uint number) external {
        count = number;
    }


}