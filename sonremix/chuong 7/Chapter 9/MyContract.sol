pragma solidity ^0.5.15;

contract MyContract {
    uint public myUint = 10;
    function setUint(uint _myUint) public {
        myUint = _myUint;
    }
}