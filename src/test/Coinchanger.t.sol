// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./utils/CoinchangerTest.sol";

contract TestCoinchanger is CoinchangerTest {
    function test0PenniesFor0Coins() public {
        uint256 coins = 0;

        Change memory change = coinchanger.makeChange(coins);

        _assertEqChange(change, Change(0, 0));
    }

    function test1PennyFor1Coins() public {
        uint256 coins = 1;

        Change memory change = coinchanger.makeChange(coins);

        _assertEqChange(change, Change(1, 0));
    }

    function test2PenniesFor2Coins() public {
        uint256 coins = 2;

        Change memory change = coinchanger.makeChange(coins);

        _assertEqChange(change, Change(2, 0));
    }

    function test1NickleFor5Coins() public {
        uint256 coins = 5;

        Change memory change = coinchanger.makeChange(coins);

        _assertEqChange(change, Change(0, 1));
    }

    function test1Nickle1PennyFor6Coins() public {
        uint256 coins = 6;

        Change memory change = coinchanger.makeChange(coins);

        _assertEqChange(change, Change(1, 1));
    }

    function _assertEqChange(Change memory _changeA, Change memory _changeB) private {
        assertEq(_changeA.pennies, _changeB.pennies);
        assertEq(_changeA.nickles, _changeB.nickles);
    }
}
