// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter {
    uint256 private count;
    
    // Function to fetch the couter value
    function value() public view returns (uint256) {
        return count;
    }

    // Function to increment the counter value
    function increment() public {
        count += 1;
    }

    // Function to decrement the counter value
    function decrement() public {
        // since the data type is unsigned integer the value
        // below 0 will not be stored
        count -= 1;
    }
}
