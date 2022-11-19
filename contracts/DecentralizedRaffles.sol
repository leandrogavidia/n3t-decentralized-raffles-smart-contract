// SPDX-License-Identifier: GPT-3.0

pragma solidity >= 0.7.0 < 0.9.0;
import "hardhat/console.sol";

contract DecentralizedRaffles {
    uint256 raffleDate;
    address[] participants;
    uint256 moneyCollected = 0;
    string awards;
    address ownerAddress;

    constructor() {
        ownerAddress = msg.sender;
    }

    modifier maxParticipants() {
        require(participants.length < 20, ":( Sorry, there is no room for more participants. Please wait for the next raffle.");
        _;
    }

    function addParticipate(address _participant) public payable maxParticipants {
        participants.push(_participant);
    }

    function getTotalParticipants() public view returns(uint256) {
        return participants.length;
    }
}