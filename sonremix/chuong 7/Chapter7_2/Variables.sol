pragma solidity ^0.5.13;

contract WorkingWithVariables {
    uint256 public myUnit;
    
    function setMyUnit(uint _myUnit) public {
        myUnit = _myUnit;
    }
    bool public myBool;
    
    function setMyBool(bool _myBool) public {
        myBool = _myBool;
    }
    uint8 public myUnit8;
    function incrementUint() public {
        myUnit8++;
        
    }
    function decrementUint() public {
        myUnit8--;
    }
    address public myAddress;
    
    function setAddress(address _myAddress) public {
        myAddress = _myAddress;
    }
    
    function getBalance0fAddress() public view returns(uint) {
       return myAddress.balance;
    }
}