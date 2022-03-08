// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Learning {

    // Boolean
    bool trueOrFalse = true;

    // Un-signed integer
    uint8 number8 = 2;
    uint16 number16 = 20;
    uint256 number256 = 20000000;
    uint number = 2000000000000;

    // Signed integer
    int negativeNumber = -1000000;
    int256 negativeNumber256 = -10000000000;

    // String
    string basicString = "Hello";

    // Array
    string[] stringArray = ["hi", "hello"];

    // Strut
    Person public john;

    struct Person {
        string firstName;
        string lastName;
        uint256 age;
    }
    function knowPerson() public {
        john = Person({firstName: "john", lastName: "Bosco", age: 25});
    }

    // Mapping
    address user = 0xdD870fA1b7C4700F2BD7f44238821C26f7392148;
    mapping(address => uint) public balances;

    function getBalance() public {
        balances[user] = 20;
    }



    // Functions and Constructors
    address public owner;

    // gets called when contract is deployed. called only once
    // owner is the account that deployed the contract

    // constructor must payable if we intend to send value to an any of it functions. 
    // value is sent to the checkBalance function. The value is sent to the address "this"
    constructor() payable {
        owner = msg.sender;
    }

    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "Only the owner can change the owner!!!");
        owner = newOwner;
    }

    // "view" function tell the solidity that the function does not not modify state. It is readOnly
    // Note that whenever you return from a function, you must define a return type
    function checkBalance() public view returns(uint256) {
        return(address(this).balance);
    }

    // Another view function
    function getNumber () public view returns(uint256) {
        return number;
    }

    // pure function
    // A pure function neither changes the state of the etherium netwowk nor makes a call to the state
    function doMaths() public pure returns(uint256) {
        returns 1+1;
    }

    // NB: calling a view or pure function fromwithin a smart contract costs lower gas


}