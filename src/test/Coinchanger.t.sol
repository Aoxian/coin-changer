// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./utils/CoinchangerTest.sol";

contract TestCoinchanger is CoinchangerTest {
    function test0penniesFor0Coins() public {
        uint256 coins = 0;

        assertEq((coinchanger.makeChange(coins)).pennies, 0);
    }
}
