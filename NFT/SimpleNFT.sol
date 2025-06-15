// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract SimpleNFT {
    string public name = "SimpleNFT";
    string public symbol = "SNFT";

    address public owner;
    uint public totalSupply;

    mapping(uint => address) public ownerOf;
    mapping(address => uint) public balanceOf;

    event Transfer(
        address indexed from,
        address indexed to,
        uint indexed tokenId
    );

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

    function mint(address to) public onlyOwner {
        uint tokenId = totalSupply;
        ownerOf[tokenId] = to;
        balanceOf[to] += 1;
        totalSupply += 1;

        emit Transfer(address(0), to, tokenId);
    }

    function transferFrom(address from, address to, uint tokenId) public {
        require(ownerOf[tokenId] == from, "Not token owner");
        require(msg.sender == from, "Only owner can transfer");

        ownerOf[tokenId] = to;
        balanceOf[from] -= 1;
        balanceOf[to] += 1;

        emit Transfer(from, to, tokenId);
    }
}
