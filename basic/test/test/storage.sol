// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
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

    uint256 number1;

    // int32 number2;
    // uint64 number3;
    // string str1;

    // bool bool1;

    struct Person {
        uint64 id;
        uint32 balance;
    }

    mapping(string => Person) public accounts;

    mapping(address => mapping(address => uint256)) public allowances;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number1 = number1 + num;
        // number2 = 2000;
        // number3 = 3000;
        // str1 = "hello";
        // bool1 = true;
        // address a = 0xA32576Bd17b4e9dDfFaD917068F80A4ff7b7409a;
        // address b = 0xBC0E48f5d2A48350B74c81ECed3A42b35b532ef8;
        accounts["tom"] = Person(101, 9900);
        allowances[0xA32576Bd17b4e9dDfFaD917068F80A4ff7b7409a][
            0xBC0E48f5d2A48350B74c81ECed3A42b35b532ef8
        ] = 80;
    }

    /**
     * @dev Return value
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256) {
        return number1;
    }
}
