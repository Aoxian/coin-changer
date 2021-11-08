// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

struct Change {
    uint256 pennies;
}

contract Coinchanger {
    function makeChange(uint256) public pure returns (Change memory) {
        return Change(0);
    }
}
