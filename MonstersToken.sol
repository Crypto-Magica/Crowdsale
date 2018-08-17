pragma solidity ^0.4.24;

import "./MintableToken.sol";
import "./DetailedERC20.sol";


contract MonstersGameXToken is MintableToken, DetailedERC20 {
    
  function MonstersGameXToken() public DetailedERC20("Monsters-Game-X", "MGX", 18) {
  }
  
}