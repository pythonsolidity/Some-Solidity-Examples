pragma solidity 0.5.1;

contract MyContract {
     address payable public addr = address(uint160(address(this)));
     uint public balance;
     
    constructor () payable public {
        addr.transfer(msg.value);
        balance = addr.balance;
    } 
    
    function end () payable public {
        selfdestruct(msg.sender);
    }
}
