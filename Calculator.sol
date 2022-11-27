//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0;

contract calculator {
     uint256 private result;

    function add(uint256 _first_number, uint256 _second_number) public {
        result = _first_number + _second_number;
    }

    function sub(uint256 _first_number, uint256 _second_number) public {
        result = _first_number - _second_number;
    }

    function mul(uint256 _first_number, uint256 _second_number) public {
        result = _first_number * _second_number;
    }

    function div(uint256 _first_number, uint256 _second_number) public {
        result = _first_number / _second_number;
    }

    function mod(uint256 _first_number, uint256 _second_number) public {
        result = _first_number % _second_number;
    }

    function answer() view public returns(uint256) {
        return result;
    }

}
