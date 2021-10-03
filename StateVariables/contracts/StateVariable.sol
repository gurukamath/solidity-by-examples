pragma solidity ^0.8.3;

contract StateVariable {
    uint8 public StateValue;

    function get() public view returns (uint8){
        return StateValue;
    }

    function set(uint8 _val) public {
        StateValue = _val;
    }
}