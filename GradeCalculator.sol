// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract GradeCalculator {
    address immutable owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner == msg.sender, "Only owner can execute this function");
        _;
    }

    function calculateGrade(uint math, uint science, uint history, uint geography, uint english) onlyOwner public view returns(string memory) {
        uint total = math+science+history+geography+english;
        uint average = total/5;
        if(average >= 90) {
            return "Grade A";
        }
        else if(average >= 70 && average < 90) {
            return "Grade B";
        }
        else if(average >= 40 && average <70) {
            return "Grade C";
        }
        else {
            return "Fail";
        }
    }
}
