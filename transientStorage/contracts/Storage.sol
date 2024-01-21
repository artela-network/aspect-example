// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {
    address private deployer;

    constructor() {
        deployer = msg.sender;
    }

    function isOwner(address user) external view returns (bool result) {
        if (user == deployer) {
            return true;
        } else {
            return false;
        }
    }

    function getAspectContext(address aspectId, string calldata key) public returns (string memory validationData) {
        bytes memory contextKey = abi.encodePacked(aspectId, key);
        (bool success, bytes memory returnData) = address(0x64).call(contextKey);
        validationData = success ? string(returnData) : '';
    }

    function setAspectContext(string calldata key, string calldata value) public returns (bool) {
        bytes memory contextKey = abi.encode(key, value);
        (bool success,) = address(0x66).call(contextKey);
        return success;
    }
}