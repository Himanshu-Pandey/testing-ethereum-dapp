pragma solidity >=0.4.21;

contract Wallet {

  uint walletAmount;

  constructor() public {
    walletAmount = 20000;
  }

  function withdrawAmount(uint _amount) public {
    require(_amount<=walletAmount,"Withdraw amount should be less than wallet amount");
    walletAmount-=_amount;
  }

  function getAmountValue() public view returns(uint) {
    return walletAmount;
  }

}
