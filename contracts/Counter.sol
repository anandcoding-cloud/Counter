// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Counter {

  uint256 private _count;
  address private _owner;
  address private _factory;


  modifier onlyOwner(address caller) {
    require(caller == _owner, "You are not the onwer");
    _;
  }

  modifier onlyFactory(){
    require(msg.sender == _factory, "YOu need to use the Factory");
    _;
  }

  constructor(address owner) public {
    _owner = owner;
    _factory = msg.sender;
  }

  function getCount() public view returns (uint256) {
    return _count;
  }

  function increment(address caller) public onlyFactory onlyOwner(caller) {
    _count++;
  }

}