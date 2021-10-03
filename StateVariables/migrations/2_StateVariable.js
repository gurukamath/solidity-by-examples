const StateVariable = artifacts.require("./StateVariable.sol");

module.exports = function(deployer){
    deployer.deploy(StateVariable);
}