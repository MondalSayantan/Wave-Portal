// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    uint256[] waveSender;
    mapping(address => uint256) public waveList;

    constructor() {
        console.log("Yo, I am a smart contract");
    }

    function wave() public {
        totalWaves += 1;
        waveList[msg.sender] += 1;
        console.log("%s is awesome and has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Damnnnn boi, I got %d waves!", totalWaves);
        return totalWaves;
    }
}
