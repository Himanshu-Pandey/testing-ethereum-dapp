pragma solidity >=0.4.21;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Number.sol";

contract TestNumber {
  function testInitialValueShouldBe1() public {
    Number num = new Number();
    uint expected = 1;
    Assert.equal(num.getNumber(), expected, "Number should be 1 initially");
  }

  function testSameNumberShouldGetAsSet() public{
    Number num = new Number();
    uint expected = 2;
    num.setNumber(2);
    Assert.equal(num.getNumber(), expected, "Number is not 2");
  }
}
