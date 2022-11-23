// SPDX-License_Identifier: Unlicensed
pragma solidity >0.8.0;

contract Ownable {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner),
        _;
    }

    constructor(address _owner){
        owner = _owner;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        owner = newOwner;
    }
}