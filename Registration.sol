// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract RegistrationDAPP {
    struct UserInfo {
        string name;
        string email;
        uint contact;
        string college;
    }
    address immutable owner;
    UserInfo[] private users;
    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner,"Only owner can retrieve data");
        _;
    }

    function set(string memory _name, string memory _email, uint256 _contact, string memory _college) public {
        UserInfo memory user = UserInfo(_name, _email, _contact, _college);
        users.push(user);
    }

    function retrieve (uint i) public view onlyOwner returns(UserInfo memory) {
        return users[i];
    }

}
