#MyToken Contract
License
This contract is licensed under the MIT License.

Description
The MyToken contract is a basic implementation of a token on the Ethereum blockchain. It allows for the creation, management, and transfer of tokens.

Variables
Public Variables
tokenName: The name of the token (string)
tokenAbbrv: The abbreviation of the token (string)
totalSupply: The total supply of tokens (uint)
Mapping
balances: A mapping of addresses to their corresponding token balances (address => uint)
Functions
mint
Purpose: Increase the total supply and balance of a given address
Parameters:
_address: The address to mint tokens to (address)
_value: The amount of tokens to mint (uint)
Effects:
Increases the total supply by _value
Increases the balance of _address by _value
burn
Purpose: Decrease the total supply and balance of a given address
Parameters:
_address: The address to burn tokens from (address)
_value: The amount of tokens to burn (uint)
Effects:
Decreases the total supply by _value if the balance of _address is sufficient
Decreases the balance of _address by _value if the balance is sufficient
