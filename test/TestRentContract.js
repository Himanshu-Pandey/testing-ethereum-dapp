const Rent = artifacts.require("RentContract");

contract("Rent tests", async accounts => {

  let rent;
  let emptyAddress = '0x0000000000000000000000000000000000000000';

  beforeEach('setup two numbers for each test', async function () {
    rent = await Rent.new();
    console.log('NEW');
  })

  it("should get empty address if rent not paid", async () => {
    const result = (await rent.getApartmentKey.call()).toString();
    assert.equal(result,emptyAddress);
  });

  it("should not be able to pay rent if rent is less than 10000", async () => {
    try{
      (await rent.payForRent.call(1));
      assert(false, "test was supposed to throw but didn't.");
    }catch(ex){
      assert(true);
    }
  });

  it("should be able to pay rent if days spent is less than 7", async () => {
    try{
      await rent.payForRent.call(10000);
      assert(true);
    }catch(ex){
      console.error(ex);
      assert(false,"test was supposed to throw but didn't.");
    }
  });

});
