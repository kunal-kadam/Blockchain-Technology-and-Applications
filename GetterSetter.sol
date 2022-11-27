//SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

// A smart contract that sets the name of user 
// and sends welcome message to the user.

contract WelcomeContract {
    string welcomeMessage = ", Welcome to my Solidity Smart Contract!";

    function getMessage() public view returns (string memory) {
        return welcomeMessage;
    }

    function setUserName(string memory _name) public {
        welcomeMessage = string.concat(_name, welcomeMessage);
    }
}
