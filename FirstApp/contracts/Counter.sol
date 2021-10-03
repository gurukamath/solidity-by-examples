pragma solidity ^0.8.3;

contract Counter {
    int public counter;

    function get() public view returns (int) {
        return counter;
    }

    function increment() public {
        counter += 1;
    }

    function decrement() public {
        counter -= 1;
    }
}