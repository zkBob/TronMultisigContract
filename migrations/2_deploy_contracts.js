const MultiSigWalletFactory = artifacts.require('MultiSigWalletFactory');
const MultiSigWalletDailyLimitFactory = artifacts.require('MultiSigWalletDailyLimitFactory');

module.exports = async function(deployer) {
  await deployer.deploy(MultiSigWalletFactory);
  await MultiSigWalletFactory.deployed();
  await deployer.deploy(MultiSigWalletDailyLimitFactory);
  await MultiSigWalletDailyLimitFactory.deployed();
}
