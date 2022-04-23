// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Test {
    function test(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    struct Person {
        string name;
        int age;
    }

    Person[] public people;

    Person public p = Person("1", 1);

    int age = 0;

    function getPerson1123() public view returns (int) {
        // return getAge();
    }
}
