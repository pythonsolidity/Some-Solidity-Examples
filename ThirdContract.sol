pragma solidity ^0.5.5;

//Modifiers and global functions

contract MyContract{
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    address owner; 
    
    constructor() public {
        owner = msg.sender;
    }
    
    struct Person {
        uint id; 
        string firstName;
        string lastName;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    
    modifier onlyWhileOpen() {
        require(block.timestamp >= 1552965871);
        _;
    }


    
    function addPerson(
        string memory _firstName, string memory _lastName) public onlyWhileOpen {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
}
