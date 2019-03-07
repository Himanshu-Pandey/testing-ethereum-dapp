pragma solidity >=0.4.21;

contract Math {

  function add(uint a,uint b) public view returns (uint){
    return a+b;
  }

  function subtract(uint a,uint b) public view returns (uint){
    return a-b;
  }

  function multiply(uint a,uint b) public view returns (uint){
    return a*b;
  }

  function divide(uint a,uint b) public view returns (uint){
    return a/b;
  }

}
