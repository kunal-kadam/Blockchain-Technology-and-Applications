// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract ViewAndPure {

    uint private number1 = 3;
    // Promise not to modify the state 
    function addToX(uint _number2) public view returns (uint) {
        return number1 + _number2;
    }

    // Promise not to modify or read from the state
    function add(uint _number1, uint _number2) public pure returns (uint) {
        return _number1 + _number2;
    }
}
