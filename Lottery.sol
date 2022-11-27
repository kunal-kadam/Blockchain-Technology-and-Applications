// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

error NotOwner();
import "./PriceConverter.sol";

contract Lottery {
    address public immutable i_manager;
    address payable[] public participants;
    using PriceConverter for uint256;
    uint256 public constant LOTTERY_USD = 20 * 10**18;
    constructor() {
        i_manager = msg.sender;
    }

    modifier onlyOwner {
        if(msg.sender != i_manager) revert NotOwner();
        _;
    }

    receive() external payable {
        require(msg.value.getConversionRate() >= LOTTERY_USD, "You need to spend more ETH!");
        participants.push(payable(msg.sender));
    }

    function pay() public payable {
        require(msg.value.getConversionRate() >= LOTTERY_USD, "You need to spend more ETH!");
        participants.push(payable(msg.sender));
    }
    
    function getBalance() public view onlyOwner returns (uint256) {
        return address(this).balance;
    }

    function random() public view returns(uint256) {
        return uint256(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

    function selectWinner() public onlyOwner returns (address) {
        require(participants.length >= 3);
        address payable winner;
        uint256 num = random();
        uint256 index = num%participants.length;
        winner = participants[index];
        winner.transfer(getBalance());
        participants = new address payable[](0);
        return winner;
    }
}
