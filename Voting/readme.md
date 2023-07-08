## Voting example

This voting example is copied from here: https://docs.soliditylang.org/en/latest/solidity-by-example.html#voting

## Voting2

Modified example with:
* check that only one proposal can win
* giveRights function takes list of addresses as input parameter

## Parameter

Pass parameter proposals for example like this:

This:
* const Web3 = require("web3");
* console.log(Web3.utils.asciiToHex("foo"));
* console.log(Web3.utils.asciiToHex("bar"));

Gives:
* 0x666f6f
* 0x626172

Parameter:
* ["0x666f6f0000000000000000000000000000000000000000000000000000000000", "0x6261720000000000000000000000000000000000000000000000000000000000"]
