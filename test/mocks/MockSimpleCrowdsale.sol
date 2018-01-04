pragma solidity ^0.4.11;

import "../../contracts/crowdsale/multistage/TokenCappedCrowdsale.sol";


/**
 * @title SampleCrowdsale
 * @dev This is an example of a fully fledged crowdsale.
 * The way to add new features to a base crowdsale is by multiple inheritance.
 * In this example we are providing following extensions:
 * HardCappedCrowdsale - sets a max boundary for raised funds
 * RefundableCrowdsale - set a min goal to be reached and returns funds if it's not met
 *
 * After adding multiple features it's good practice to run integration tests
 * to ensure that subcontracts works together as intended.
 */
contract MockSimpleCrowdsale is Crowdsale, TokenCappedCrowdsale {


  function MockSimpleCrowdsale(uint256 _startTime, uint256[] _endTime, uint256[] _rate, address _wallet, address controller, uint256[] _cap, uint256[] _capTimes)
  Crowdsale(_startTime, _endTime, _rate, _wallet, controller)
  TokenCappedCrowdsale(_cap, _capTimes)
  {

  }

  function diluteCaps() public {
     for(uint8 i = 0; i < softCap.length; i++) {
       softCap[i].cap = softCap[i].cap.div(1e6);
    }
  }
}
