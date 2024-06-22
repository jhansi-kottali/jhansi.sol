// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // Public variables to store the details about the coin
    string public tokenName = "NewToken";
    string public tokenAbbrv = "NTK";
    uint public totalSupply=0;

    // Mapping to store balances of addressess
    mapping(address => uint) public balances;

    // Mint function to increase the total supply and balance of a given address
    function mint (address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to decrease the total supply and balance of a given address
    function burn (address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
