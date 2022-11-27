//SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract LoopSum {
    function sumInRange(uint start, uint end, uint range) public pure returns (uint) {
        uint result;
        for(uint i = start; i <= end; i+= range) {
            result += i;
        }
        return result;
    }
}
