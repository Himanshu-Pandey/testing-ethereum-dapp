const Migrations = artifacts.require("Migrations");
const Math = artifacts.require("Math");
const Number = artifacts.require("Number");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(Math);
  deployer.deploy(Number);
};
