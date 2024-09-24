# Token Smart Contract

This is a basic ERC20-like token contract implemented in Solidity. It allows the creation of a token with minting and burning functionalities, along with simple balance management.

## Contract Details

- **Token Name**: `Token`
- **Token Abbreviation**: `TKN`
- **Total Supply**: The total supply of tokens minted and available in circulation.
- **Balances**: A mapping of addresses to token balances.

## Functions

### `mint(address _account, uint256 _amount)`

This function allows minting new tokens and adding them to the balance of a specified account.

- **Parameters**:

  - `_account`: The address where the newly minted tokens will be credited.
  - `_amount`: The amount of tokens to mint.

- **Effect**:
  - Increases the token balance of `_account`.
  - Increases the total supply by the minted amount.

### `burn(address _account, uint256 _amount)`

This function allows burning (destroying) a specified amount of tokens from an account’s balance.

- **Parameters**:

  - `_account`: The address whose tokens will be burned.
  - `_amount`: The amount of tokens to burn.

- **Effect**:

  - Reduces the token balance of `_account`.
  - Reduces the total supply by the burned amount.

- **Reverts** if the account does not have enough tokens to burn.

## Variables

- `string tokenName`: Holds the name of the token (set to `"Token"`).
- `string tokenAbbreviation`: Holds the token abbreviation (set to `"TKN"`).
- `uint256 totalSupply`: The total supply of tokens currently in existence.
- `mapping(address => uint256) balances`: Maps each address to its token balance.

## Usage

To interact with this contract, you can:

1. **Mint Tokens**: Call the `mint()` function, specifying the recipient's address and the amount of tokens to mint.
2. **Burn Tokens**: Call the `burn()` function, specifying the token holder's address and the amount of tokens to burn.

For example, if you want to mint 100 tokens to an account `0x123...`, you would call:

```solidity
mint(0x123..., 100);
```
