// SPDX-License-Identifier: GPT-3.0

pragma solidity >= 0.7.0 < 0.9.0;
import "hardhat/console.sol";

contract DecentralizedRaffles {
    uint[50] participants;

    constructor() {
        console.log("My address", msg.sender);
    }
}