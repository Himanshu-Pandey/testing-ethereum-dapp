pragma solidity >=0.4.21;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Wallet.sol";

contract TestWallet {

  function testInitialAmountShouldBe20k() public {
    Wallet wall = new Wallet();
    uint expected = 20000;
    Assert.equal(wall.getAmountValue(), expected, "Wallet should be 20000 initially");
  }

  function testShouldRemove100Successfully() public{
    Wallet wall = new Wallet();
    wall.withdrawAmount(100);
    Assert.equal(wall.getAmountValue(), 19900, "Wallet should be 19900");
  }

}
