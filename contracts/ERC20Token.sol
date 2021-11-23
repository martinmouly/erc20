pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
	constructor(string memory name, string memory symbol,uint256 totalSupply) public ERC20(name, symbol) {
		_mint(msg.sender,totalSupply);
    }

	function getToken() public{
		distributeTokens(msg.sender, 1000000000);
    }
	function distributeTokens(address tokenReceiver, uint256 amount) 
public
{
	
  _mint(tokenReceiver, amount);
}
}