const ERC20Token = artifacts.require('ERC20Token.sol');

module.exports = async function (deployer) {
  await deployer.deploy(ERC20Token, 'ERC20Token', 'KrdRX', '303322030000000000000000000');
};
