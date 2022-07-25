// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Slot {
    mapping (uint256 => uint256) public data;

    function findMapLocation(uint256 slot, uint256 key) public pure returns (uint256) {
        return uint256(keccak256(abi.encode(key, slot)));
    }

    function setData(uint256 key, uint256 value) public {
        data[key] = value;
    }
}