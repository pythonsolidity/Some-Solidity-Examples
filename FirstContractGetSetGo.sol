pragma solidity ^0.5.5; 

contract MyContract {
    string public value;    //get value (implicit getter function)
    
    constructor() public {
        value = "myValue";  //set value at deployment
    }
    
/*    function get() public view returns(string memory) {
       return value;    //get value (explicit)
    }*/
    
    function set(string _value) public {
        value = _value;     //set or modify value 
    }
}
