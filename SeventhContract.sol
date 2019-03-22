pragma solidity ^0.5.5;

//Libraries and math
// DRY: Dont repeat yourself
// libraries dont have storage and cannot inherit from a library. 
// They are meant to be used inside smart contracts.

import "./safemath.sol";

contract MyContract {
    uint256 public value; 
    
    function calculation(uint _value1, uint _value2) public {
        value = SafeMath.div(_value1,_value2);
    }
    
    using SafeMath for uint;
    uint256 public value2;
    function calculation2(uint _value1, uint _value2) public {
        value2 = _value1.div(_value2);
    }
    
}
