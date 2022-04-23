// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity =0.8;

contract Other {
    struct Person {
        string name;
        uint age;
        bool isUse;
    }

    mapping(address => Person) public persons;

    function setPerson(
        address p,
        string memory name,
        uint age
    ) public {
        persons[p].age = age;
        persons[p].name = name;
    }

    function getPerson(address p) public view returns (string memory) {
        Person memory ps = persons[p];
        require(!ps.isUse, "no setter");
        return ps.name;
    }

}
