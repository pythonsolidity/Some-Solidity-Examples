pragma solidity ^0.5.5;

contract ERC20Token {
    string public name;
    address payable wallet;
    
    mapping(address => uint) public balances; 
    
    constructor(string memory _name) public {
        name = _name;
        wallet = tx.origin;
    }
    
    modifier payEther() {
        require(msg.value >=1);
        _;
    }
    
    function mint() public payable payEther {
        balances[tx.origin] ++;
        wallet.transfer(msg.value);
    }    
}


//Inheritance 

contract MyToken is ERC20Token {
    string public symbol;
    address[] public owners; 
    uint256 public ownerCount;
    
    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
        symbol = _symbol;
    }
    
    function mint() public payable {
        super.mint();
        owners.push(msg.sender);
        ownerCount ++;
    }
}
