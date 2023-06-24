// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ArtToken is ERC20,Ownable {
    constructor(uint256 initialSupply) ERC20("Artela", "ART") {
        _mint(msg.sender, initialSupply);
    }
}