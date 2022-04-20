// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.8.9;

interface Idemo {
    function read() external view returns (uint256);

    function totalSupply() external view returns (uint256);
}

contract demo {
    string public name = "test";

    int num = 666;

    function getName() public view returns (int) {
        return num;
    }
}
