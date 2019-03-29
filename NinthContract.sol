pragma solidity 0.5.1;

contract MyContract {
    uint public x = 9;
    uint public x1;
    uint public x2;
    
    bytes1 public y = 0;
    //bytes32 public y1;
    bytes32 public y2;


    function operations () internal returns (uint, uint, bytes32, bytes32){
        x += 2;
        uint _x1 = x;
        
        x *=2;
        uint _x2 = x; 
        
        y >>=2;
        bytes32 _y1 = y;
        
        y |= ~y;
        bytes32 _y2 = y;
        
        return (_x1, _x2, _y1, _y2);
    }

    function results () public {
        (x1 , x2 , , y2) = operations(); //intentionally missing y1
    }
}
