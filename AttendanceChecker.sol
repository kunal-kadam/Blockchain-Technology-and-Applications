// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract AttendanceChecker {
    address immutable owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner == msg.sender, "Only owner can access the function.");
        _;
    }

    function collegeAttendance(uint noOfLectures) onlyOwner public view returns(string memory) {
        if(noOfLectures >= 8) {
            return ("Student is applicable to sit for exam.");
        } else if((noOfLectures >= 4) && (noOfLectures < 8)) {
            return ("Student is in defaulter list. Report parents.");
        } else {
            return ("Student has to retake the entire course again.");
        }
    }

}
