// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {
    struct Person {
        uint64 id;
        uint32 balance;
    }

    mapping(string => Person) public accounts;

    /**
     * @dev Store value in variable
     * @param name value to store
     * @param person value to store
     */
    function store(string calldata name, Person calldata person) public {
        accounts[name] = person;
    }

    /**
     * @dev Return value
     * @return value of 'accounts'
     */
    function retrieve(string calldata name) public view returns (uint64) {
        return accounts[name].id;
    }
}

