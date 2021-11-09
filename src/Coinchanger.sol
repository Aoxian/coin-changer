// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

struct Change {
    uint256 pennies;
    uint256 nickles;
    uint256 dimes;
}

contract Coinchanger {
    function makeChange(uint256 _coins) public pure returns (Change memory) {
        Change memory change = Change(0, 0, 0);
        uint256 coins = _coins;

        while (coins >= 10) {
            coins = coins - 10;
            change.dimes = change.dimes + 1;
        }
        if (coins >= 5) {
            coins = coins - 5;
            change.nickles = 1;
        }
        change.pennies = coins;

        return change;
    }
}
