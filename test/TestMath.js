const Number = artifacts.require("Number");
const Math = artifacts.require("Math");

contract("Math tests", async accounts => {

  let numberOne,numberTwo,math;

  beforeEach('setup two numbers for each test', async function () {
    numberOne = 1;
    numberTwo = 2;
    math = await Math.new();
  })

  it("1 plus 2 should be 3", async () => {
    const expected = 3;
    const result = (await math.add.call(numberOne,numberTwo)).toNumber();
    assert.equal(result,expected);
  });

  it("2 minus 1 should be 1", async () => {
    const expected = 1;
    const result = (await math.subtract.call(numberTwo,numberOne)).toNumber();
    assert.equal(result,expected);
  });

  it("2 multiply 1 should be 2", async () => {
    const expected = 2;
    const result = (await math.multiply.call(numberTwo,numberOne)).toNumber();
    assert.equal(result,expected);
  });

  it("2 divide 1 should be 2", async () => {
    const expected = 2;
    const result = (await math.divide.call(numberTwo,numberOne)).toNumber();
    assert.equal(result,expected);
  });

});
