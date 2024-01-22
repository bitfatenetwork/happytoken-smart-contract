// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @custom:security-contact info@bitfate.com
contract BitfateProtocol is ERC20, ERC20Burnable, ERC20Permit, Ownable {
    constructor(address initialOwner)
        ERC20("Bitfate Protocol", "BITF")
        ERC20Permit("Bitfate Protocol")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 700000 * 10 ** decimals());
    }
}
