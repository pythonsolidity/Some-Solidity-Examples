pragma solidity ^0.5.5;

//calling functions from another deployed contract

contract ERC20Token {
    string public name;
    mapping(address => uint) public balances; 
    
    function mint() public {
        balances[tx.origin] ++;
    }    
}



contract MyContract {
   
    address payable wallet;
    address payable token;
    
    constructor(address payable _token) public {
        wallet = msg.sender;    
        token = _token;
    }
    
    function() external payable {
        buytoken();
    }
    
    function buytoken() public payable {
        ERC20Token(address(token)).mint();
        wallet.transfer(msg.value);
    }
}
