// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract A {
    string public text = "Contract A";

    function getText() public view returns(string memory){
        return text;
    }
}

contract B is A {
    constructor() {
        text = "Contract B";
    }
}