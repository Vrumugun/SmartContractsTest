// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Counter
 * @dev Increment or decrement a counter
 */
contract Counter {
    uint256 value;

    function increment() public {
        value += 1;
    }

    function decrement() public {
        if (value > 0) {
            value -= 1;
        }
    }

    function get() public view returns (uint256) {
        return value;
    }
}
