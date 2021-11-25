pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
	constructor(string memory name, string memory symbol,uint256 totalSupply) public ERC20(name, symbol) {
		_mint(msg.sender,totalSupply);
    }

	function getToken() public  payable returns (bool) {
      require(isCustomerWhiteListed(msg.sender));
      _mint(msg.sender,10000);
      return true;
    }

  function buyToken() public payable returns(bool){
    require(customerTierLevel(msg.sender) > 0);
    uint256 amountToBuy = msg.value * 100000;
    if (customerTierLevel(msg.sender) == 2) {
         amountToBuy=2*amountToBuy;
    }
    _mint(msg.sender,amountToBuy);
    return true;
  }

  function isCustomerWhiteListed(address account) public returns(bool){
      return true;
  }

  function customerTierLevel(address account) public returns (uint256 tier){
    return 2;
  }

  
}
