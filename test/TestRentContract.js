const RentContract = artifacts.require("RentContract");

contract('Rent Contract',function(){

  let rentContract;

  beforeEach('This would before every test',async function(){
    rentContract = await RentContract.new();
  });

  it('No key should be given if amount not payed',async function(){
    var key = await rentContract.getApartmentKey.call();
    let emptyAddress = '0x0000000000000000000000000000000000000000';

    assert.equal(key,emptyAddress,'Key should be empty');
  });

});
