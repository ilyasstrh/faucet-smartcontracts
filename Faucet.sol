pragma solidity ^0.5.0;

contract Faucet {
	constructor() public {

	}

	function withdraw(uint withdraw_amount) public{
		//limit withdrawl amount
		require(withdraw_amount <= 100000000000000000);

		//send the amount to the adress that requested it
		msg.sender.transfer(withdraw_amount);
	}

	function() external payable{

	}
}