// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./Counter.sol";


contract CounterFactory {
	mapping (address => Counter) _counters;

	function createCounter() public {
		require (_counters[msg.sender] == Counter(0));
		_counters[msg.sender] = new Counter(msg.sender);
	}
	
	function increment() public{
		require (_counters[msg.sender] != Counter(0));
		Counter(_counters[msg.sender]).increment(msg.sender);
	}

	function getCount(address account) public view returns(uint256){
		require (_counters[account] != Counter(0));
		return (_counters[account].getCount());
	}

	function getMyCount() public view returns (uint256) {
		return (getCount(msg.sender));
	}
}