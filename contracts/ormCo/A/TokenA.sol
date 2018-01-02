pragma solidity ^0.4.11;

import '../../token/Token.sol';


/**
 Simple Token based on OpenZeppelin token contract
 */
contract TokenA is Token {

  string public constant name = "DFS Token A";
  string public constant symbol = "DFA";
  uint8 public constant decimals = 18;
  uint256 public constant INITIAL_SUPPLY = 140000000 * (10 ** uint256(decimals));

}
