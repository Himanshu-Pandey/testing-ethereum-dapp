pragma solidity >=0.4.21;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Wallet.sol";

contract TestWallet {

  function testInitialAmount20000() public {

    Wallet wallet = new Wallet();
    uint walletAmount = wallet.getAmountValue();

    Assert.equal(walletAmount,20000,"Amount has to be 20000");
  }

}
