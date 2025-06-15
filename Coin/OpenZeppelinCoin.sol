// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract OpenZeppelinCoin is ERC20, Ownable {
    constructor() ERC20("OpenZeppelinCoin", "OZC") Ownable(msg.sender) {}

    // Mint function restricted to contract owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
