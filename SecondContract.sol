pragma solidity ^0.5.5; 

// Solidity data types 

contract MyContract {
    string public value = "myValue";
    string public constant fix = "Cannot change";
    bool public myBool = true;
    int public myint = -2;
    uint public peopleCount; 
    uint public peopleCount2;
    enum State {a, b, c}
    State public state;
    
    struct Person {
        uint id;
        string firstName; 
        string lastName;
    }
    
    Person[] public people;
    
    mapping(uint => Person) public people2;
    
    function addPerson2(string memory _firstName, string memory _lastName) public {
        peopleCount2 += 1;
        people2[peopleCount2] = Person(peopleCount, _firstName, _lastName);
    }
    
     function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people.push(Person(peopleCount, _firstName, _lastName));
    }

    constructor() public {
        state = State.a;
    }
    
    function activate() public {
        state = State.b;
    }
    
    function is_b() public view returns(bool) {
        return state == State.b;
    }
    
/*    function get() public view returns(string memory) {
       return value; 
    }*/
    
    function set(string memory _value) public {
        value = _value;
    }
}
