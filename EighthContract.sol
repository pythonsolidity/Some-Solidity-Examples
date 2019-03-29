pragma solidity 0.5.1;

contract MyContract {
     address payable public addr = address(uint160(address(this)));
     address payable public owner;
     uint public balance;
     
     
    constructor () payable public {
        require(msg.value > 10 ether);
        owner = msg.sender;
        //addr.transfer(msg.value);
        balance = addr.balance;
    }
    
    function money () payable public {
        require(msg.value > 20 ether);
        balance = addr.balance;
    }
    
    function end () payable public {
        require(msg.sender == owner);
        selfdestruct(msg.sender);
    }
}
