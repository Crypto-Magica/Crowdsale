pragma solidity ^0.4.24;

import "./FinalizableCrowdsale.sol";
import "./MonstersToken.sol";

contract MonstersGameXTokenCrowdsale is FinalizableCrowdsale {
    
  constructor(uint256 _rate, address _wallet, address _token, uint256 _openingTime, uint256 _closingTime) public
    FinalizableCrowdsale(_rate, _wallet, MonstersGameXToken(_token),  _openingTime, _closingTime) {
  }
  
  function setRate(uint256 newRate) public onlyOwner {
      rate = newRate;
  }
  
  function sendTokens(address beneficiary, uint256 tokensAmount) public onlyOwner {
    require(beneficiary != address(0));
    _processPurchase(beneficiary, tokensAmount);
    TokenSending(beneficiary, tokensAmount); // event
  }
}