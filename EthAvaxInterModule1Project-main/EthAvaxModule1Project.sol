// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "hardhat/console.sol";

contract ErrorHandling {
    uint public age;

    function setAge(uint _age) public{
        age = _age;
    }

    function testAssert() public view{
        assert(age >= 18 && age <= 80);
        console.log("Congratulations! You are eligible to vote.");
    }

    function testRequire() public view{
        require(age >= 18, "You must be at least 18 years old to be eligible to vote" );
        console.log("Congratulations! You are eligible to vote.");
    }

    function testRevert() public view{
        if (age < 18 || age > 80){
            revert("You must be between 18 and 80 years old to be eligible to vote");
        }
        else{
            console.log("Congratulations! You are eligible to vote.");
        }
    }
}
