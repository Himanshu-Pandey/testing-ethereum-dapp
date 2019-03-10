pragma solidity >=0.4.21;

contract RentContract {

  uint dateOfListing;
  uint rentAmount;
  bool isPaymentDone;
  address apartmentKey;
  uint RENT_GRACE_DAYS = 7;

  constructor() public {
    dateOfListing = block.timestamp;//1514764800;
    apartmentKey = 0x193a461d2Dae8B7d2674a8A406212fe08A420887;
    rentAmount = 10000;
  }

  function payForRent(uint _rent) public {
    uint daysDifferene = (block.timestamp - dateOfListing) / 60 / 60 / 24;
    require(_rent==rentAmount,"Rent amount must be 1000");
    require(daysDifferene<=RENT_GRACE_DAYS,"Days gap is more than 7");
    isPaymentDone = true;
  }

  function getApartmentKey() public view returns(address) {
    if(isPaymentDone)
      return apartmentKey;
    else
      return address(0);
  }

}
