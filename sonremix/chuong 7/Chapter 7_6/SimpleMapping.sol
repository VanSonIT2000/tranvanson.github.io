pragma solidity ^0.6.0;
contract SimpleMapping {
   
    
    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    function setMyVarToTrue() public {
        myAddressMapping[msg.sender]=true;
    }
}

