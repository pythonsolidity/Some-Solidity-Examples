pragma solidity 0.5.5;

contract ParentContract {
    uint public x;
    
    function set (uint _x) public {
        x = _x;
    }
    
    function get () public view returns (uint result){
        result = 1;
    }
}
    
contract ChildContract is ParentContract {
    function set (uint _x) public {
        x = _x;
    }
    
    function get () public view returns (uint result){
        result = x;
    }
}

contract targetParent {
    ParentContract pt = new ParentContract();
    uint public answer;
    
    function check (uint _x) public returns (uint){
        pt.set(_x);
        answer = pt.get(); //answer = 1
    }
}

contract targetChild {
    ParentContract pt = new ChildContract();
    uint public answer;
    
    function check (uint _x) public returns (uint){
        pt.set(_x);
        answer = pt.get();  // answer = whatever you set
    }
}
