pragma solidity ^0.4.11;

import '../../token/Token.sol';


/**
 Simple Token based on OpenZeppelin token contract
 */
contract TokenB is Token {

  string public constant name = "DFS Token B";
  string public constant symbol = "DFB";
  uint8 public constant decimals = 18;
  uint256 public constant INITIAL_SUPPLY = 30000000 * (10 ** uint256(decimals));

}
