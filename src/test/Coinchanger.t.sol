// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./utils/CoinchangerTest.sol";

contract TestCoinchanger is CoinchangerTest {
    function test0PenniesFor0Coins() public {
        uint256 coins = 0;

        _assertEqChange(coinchanger.makeChange(coins), Change(0));
    }

    function test1PennyFor1Coins() public {
        uint256 coins = 1;

        _assertEqChange(coinchanger.makeChange(coins), Change(1));
    }

    function test2PenniesFo2Coins() public {
        uint256 coins = 2;

        _assertEqChange(coinchanger.makeChange(coins), Change(2));
    }

    function _assertEqChange(Change memory _changeA, Change memory _changeB) private {
        assertEq(_changeA.pennies, _changeB.pennies);
    }
}
