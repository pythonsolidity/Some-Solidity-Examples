pragma solidity 0.5.8;

//A smart contract to collect funds for my project

contract PayMe {
    address payable owner;  //I am the owner
    uint public running_total; //How much ether I have collected
    
    constructor () public {
        owner = msg.sender;     //msg.sender is the address of caller
    }
    
    function Pay () public payable {
        require(msg.value >= 1 ether);
        running_total= running_total + msg.value;
    }
    
    function Collect (uint cap) public {
        require (msg.sender == owner);
         if (running_total >= cap*10**18){
            selfdestruct(owner);    //the contract is destroyed, all money goes to me 
         }
    }
}
