const Counter = artifacts.require("Counter");
// const ics = artifacts.require("ics");
const MyContract = artifacts.require("MyContract");

module.exports = function(deployer){
    deployer.deploy(Counter);
    // deployer.deploy(ics);
    deployer.deploy(MyContract);
}