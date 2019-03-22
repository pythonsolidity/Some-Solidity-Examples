pragma solidity ^0.5.5;

//Libraries and math
// DRY: Dont repeat yourself
// libraries dont have storage and cannot inherit from a library. 
// They are meant to be used inside smart contracts.

library math {
    function divide(uint a, uint b) internal pure returns(uint) {
        require(b>0);
        uint c = a/b;
        return c;
    }
}
