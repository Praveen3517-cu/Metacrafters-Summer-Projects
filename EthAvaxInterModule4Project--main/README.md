# EthAvaxInterModule4Project 

Simple overview of use/purpose.

## Description

 The smart contract should have the following functionality:

1. Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
2. Transferring tokens: Players should be able to transfer their tokens to others.
3. Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
4. Checking token balance: Players should be able to check their token balance at any time.
5. Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.


### Prerequisites
1. In your command prompt type npm -v. If you don't get error u can continue.
2. Metamask account
3. Snowtrace account

### Executing program
1. After cloning the degenproject, Setup all the contracts.
2. In terminal type npx hardhat node to get the private test accounts.
3. In one of those accounts get 2 avax test tokens from this website: https://core.app/tools/testnet-faucet/?subnet=c&token=c
4. Deploy the contract address in your remix.
5. Verify the contract 
6. Implement the smart contract functions.
7. You can see the changes in your snowtrace website too where you can track that contract. Website:https://snowtrace.io/

## DegenToken
This is a simple ERC20 token that can be minted, burned, and transferred. It also has a redeem function that allows users to redeem tokens for NFTs.

### Functions of the smartcontract
1. mint(address to, uint256 amount) - Mints amount tokens to the address to. Only the owner of the contract can call this function.
2. burn(uint256 amount) - Burns amount tokens from the caller's balance.
3. TransferToken(address _reciever,uint amount) - Transfers amount tokens from the caller's balance to the address _reciever.
4. redeem(uint256 item) - Redeems amount tokens for an NFT. The item parameter specifies the NFT that the user wants to redeem.
5. showStore() - Returns a string that lists the available NFTs that can be redeeme

## Authors

Bevara Praveen
[praveenbevara33@gmail.com, 21BCS3517@cuchd.in]

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
