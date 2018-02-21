pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Test01 is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Test01(address _owner)  UpgradeableToken(_owner) {
    name = "Test01";
    symbol = "TT01";
    totalSupply = 10000000000000000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}