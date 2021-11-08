// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "ds-test/test.sol";

import "../../Coinchanger.sol";
import "./Hevm.sol";

abstract contract CoinchangerTest is DSTest {
    Hevm internal constant hevm = Hevm(HEVM_ADDRESS);

    // contracts
    Coinchanger internal coinchanger;

    function setUp() public virtual {
        coinchanger = new Coinchanger();
    }
}
