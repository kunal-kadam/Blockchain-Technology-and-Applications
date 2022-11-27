// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract calculateAge {
    uint16 age;

    function setBirthYear(uint16 _birthYear) public {
        age = 2022 - _birthYear;
    }

    function get_age() view public returns (uint16) {
        return age;
    }
}
