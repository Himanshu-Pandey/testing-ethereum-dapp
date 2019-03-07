pragma solidity >=0.4.21;

contract Number {
  uint _num;

  constructor() public {
    _num = 1;
  }

  function setNumber(uint num) public {
    _num = num;
  }

  function getNumber() public view returns (uint) {
    return _num;
  }
}
