pragma solidity ^0.4.2;

contract owned {
    address public owner;

    function owned()public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (msg.sender == owner);
        _;
    }

    }