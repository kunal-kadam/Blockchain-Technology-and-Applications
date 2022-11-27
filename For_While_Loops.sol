// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract Loop {

    uint256 limit = 10;
    uint256[] public tables; 
    function calculateTableFor(uint256 number) public {
        delete tables;
        for(uint i = 0; i <= limit; i++) {
            tables.push(i*number);
        }
    }

    function calculateTableWhile(uint256 number) public {
        uint num = 0;
        delete tables;
        while(num <= 10) {
            tables.push(num*number);
            num++;
        }
    }
}
