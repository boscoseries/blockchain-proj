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

    function checkBalance() public {
        balances[user] = 20;
    }
}