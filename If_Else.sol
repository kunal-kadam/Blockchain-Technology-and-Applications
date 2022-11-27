// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0;

contract GreatestNumber {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;

    address immutable owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "Only owner can access!");
        _;
    }

    function setNumber(uint256 _a, uint256 _b, uint256 _c, uint256 _d) public onlyOwner {
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function getGreatestNumber() public view onlyOwner returns(uint256) {
        if( (a > b) && (a > c) && (a > d)){
            return(a);
        }
        else if( (b > c) && (b > d) && (b > a)){
            return(b);
        }
        else if( (c > d) && (c > b) && (c > a)){
            return(c);
        }
        else {
            return(d);
        }
    } 


}
