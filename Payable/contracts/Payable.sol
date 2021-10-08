//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {}

    function notPayable() public {}

    function withdraw() public {
        uint amount = address(this).balance;

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Owner withdrawal was not successful");

    }

    function transfer(address payable _to, uint amt) public {
        (bool success, ) = _to.call{value: amt}("");
        require(success, "Could not send ether to account");
    }
}