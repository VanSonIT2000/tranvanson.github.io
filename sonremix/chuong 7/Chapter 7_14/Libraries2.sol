pragma solidity >=0.4.16 <0.7.0;

library Search {
    function indexOf(uint[] storage self, uint value) public view returns (uint) {
        for(uint i =0; i< self.length; i++)
        if (self[i] == value) return i;
        return uint(-1);
    }
}

contract NotUsingForExample{
    uint[] data;
    function append(uint value)public{
        data.push(value);
    }
    
    function replace(uint _old, uint _new) public{
        //Thí perfoems the library function calldata
        uint index = Search.indexOf(data, _old);
        if(index == uint(-1))
           data.push(_new);
        else
           data[index] = _new;
    }
}

contract UsingForExample{
    using Search for uint[];
    uint[] data;
    
    function append(uint value) public{
        data.push(value);
   }
   
   function replace(uint _old, uint _new) public{
       //This performs the library call 
       uint index = data.indexOf(_old);
       if(index == uint (-1))
       data.push(_new);
       else
       data[index] = _new;
   }

}