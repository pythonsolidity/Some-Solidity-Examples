pragma solidity ^0.5.5; 

contract MyContract {
    string public value;
    
    constructor() public {
        value = "myValue";
    }
    
/*    function get() public view returns(string memory) {
       return value; 
    }*/
    
    function set(string _value) public {
        value = _value;
    }
}
