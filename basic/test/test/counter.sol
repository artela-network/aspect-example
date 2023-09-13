// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Counter {
    uint256 counter;

    // The aspect specification should give overriding the isOwner method.
    function isOwner(address user) external view returns (bool result) {
        return true;
    }

    function count(uint256 number) public {
        counter += number;
    }
}
