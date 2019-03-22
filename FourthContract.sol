pragma solidity ^0.5.5;

contract MyContract {
    mapping(address => uint) public balances;
    address payable wallet;
    
    event purchase(
        address indexed _buyer, 
        uint _amount
    );
    
/*    constructor(address payable _wallet) public {
    wallet = _wallet;    
    } */
    
    constructor() public {
    wallet = msg.sender;    
    }
    
    function() external payable {
        buytoken();
    }
    
    function buytoken() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit purchase(msg.sender, msg.value);
    }
}
