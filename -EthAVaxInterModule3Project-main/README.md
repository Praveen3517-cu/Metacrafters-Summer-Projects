# -EthAVaxInterModule3Project
Write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it. From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.

---

# MyToken Contract

This is a basic token contract implemented in Solidity. It allows for token minting, burning, and transfer functionality. The contract owner has the authority to mint new tokens, while any address can burn their own tokens and transfer tokens to other addresses.

## Contract Details

- Contract name: MyToken
- License: MIT
- Solidity version: 0.8.18

## Contract Variables

- `owner`: The address of the contract owner.
- `tokenName`: The name of the token.
- `tokenSymbol`: The symbol or abbreviation of the token.
- `totalSupply`: The total supply of the token.
- `balances`: A mapping that stores the token balances of addresses.

## Functions

### `constructor()`

- Initializes the contract owner, token name, token symbol, and total supply.
- The contract owner is set as the deployer of the contract.

### `mint(address _address, uint256 _value)`

- Mints new tokens and assigns them to the specified address.
- Only the contract owner can call this function.
- Increases the total supply of the token.

### `burn(address _address, uint256 _value)`

- Burns (destroys) tokens from the specified address.
- The address must have a sufficient balance to burn.
- Decreases the total supply of the token.

### `transfer(address _from, address _to, uint256 _value)`

- Transfers tokens from one address to another.
- The sender must have a sufficient balance to transfer.
- Decreases the sender's balance and increases the recipient's balance.

## Usage

1. Open Command prompt in your system.
2. Deploy local hardhat network using npx hardhat node.
3. Deploy the contract on Remix.
4. Set the environment to dev-Hardhat provider.
5. Set the contract owner as the desired address.
6. The contract owner can mint new tokens using the `mint` function, specifying the recipient address and the amount of tokens to mint.
7. Any address can burn their own tokens using the `burn` function, specifying the amount of tokens to burn.
8. Addresses can transfer tokens to other addresses using the `transfer` function, specifying the sender address, recipient address, and the amount of tokens to transfer.

---

## License

This contract is licensed under the MIT License. See the [LICENSE] file for more details.
