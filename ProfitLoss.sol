// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract ProfitLossChecker {
    address owner; 
    
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(owner==msg.sender, "Only owner can access the code");
        _;
    }

    function calculateProfitLoss(uint costPrice, uint sellingPrice) onlyOwner public view returns (string memory, uint) {
        if(sellingPrice > costPrice) {
            return("Profit earned : ", sellingPrice-costPrice);
        } else if(costPrice > sellingPrice) {
            return("Loss incured: ", costPrice-sellingPrice);
        } else {
            return("Neither Profit Nor Loss", 0);
        }
    }

}
