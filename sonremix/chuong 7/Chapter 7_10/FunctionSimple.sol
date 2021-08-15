pragma solidity ^0.5.13;
contract FunctionsSimple {
    mapping(address => uint64) public balanceReceived;
    address payable owner;
    constructor() public {
        owner = msg.sender;
        
    }
    function getOwner() public view returns(address){
        return owner;
        
    }
    function convertWeiToEther(uint _amountInWei) public pure returns(uint){
        return _amountInWei / 1 ether;
    }
    function destroySmartContract() public {
        require(msg.sender == owner, "  You are not the owner!");
        selfdestruct(owner);
    }
    function receivedMoney() public payable {
    assert(balanceReceived[msg.sender] + uint64(msg.value) >= balanceReceived[msg.sender]);  
    balanceReceived[msg.sender] += uint64 (msg.value);
    }
    
    function withdrawMoney(address payable _to, uint64 _amount) public {
        require(_amount <= balanceReceived[msg.sender], " You don't have enought ether");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
    function () external payable {
        receivedMoney();
    }
}