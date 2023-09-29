# Polygon Module 1 - NFT Collection Deployment and Transfer

## Project Description

In Polygon Module 1, you will deploy an NFT collection on the Ethereum blockchain, and transfer assets via the Polygon Bridge. To add a creative touch, you will use an image generation tool like DALLE 2 or Midjourney to create unique images for your NFTs.

## Project Aim

1. Generate a 5-item collection using DALLE 2, Midjourney, or Gencraft (free source) and upload the images to pinata.cloud for storage.
2. Deploy an ERC721 or ERC1155 contract to the Goerli Ethereum Testnet.
3. Implement a promptDescription function on the contract that returns the prompt used to generate the NFT images.
4. Map the NFT collection to the Polygon network using the token mapper (optional but helpful for visualization).
5. Write a hardhat script to batch mint all NFTs, with ERC721A being the recommended choice.
6. Create a hardhat script to batch transfer all NFTs from Ethereum to the Polygon Mumbai network using the FxPortal Bridge.
7. Approve the NFTs for transfer to the Polygon network.
8. Deposit the approved NFTs to the Bridge.
9. Test balanceOf on the Polygon Mumbai network to verify the NFT balance.

## Getting Started

1. Clone this project to your local machine.
2. Make sure you have test ethers in your account for the Ethereum Goerli and Polygon Mumbai testnets.
3. Rename `.env.example` to `.env` and provide your Ethereum wallet private key where required (i.e., `PRIVATE_KEY='your wallet private key'`).
4. Install the project dependencies by running the following command:

```
npm install
```

## Deploying the ERC721 Contract

Before deploying, ensure that you have the required test ethers in your Ethereum account. To deploy the ERC721 contract to the Goerli Ethereum Testnet, execute the following command:

```
npx hardhat run scripts/deploy.js --network goerli
```

After deploying, copy the contract address generated and paste it into the `contractAddress.js` file (stored in the metadata folder) and `batchMint.js` file (stored in the scripts folder).

## Batch Mint NFTs

Now, use the deployed ERC721 contract to mint the specified number of NFTs and assign them to your address. Execute the following command:

```
npx hardhat run scripts/batchMint.js --network goerli
```

## Approve and Deposit NFTs to Polygon Mumbai

To prepare the minted NFTs for transfer to the Polygon Mumbai network, run the following commands:

```
npx hardhat run scripts/approveDeposit.js --network goerli
```

This will approve the NFTs for transfer and deposit them to the Polygon Mumbai network using the FxPortal Bridge.


## Authors

Bevara Praveen
Email: praveenbevara33@gmail.com , 21BCS3517@cuchd.in  

## License

This project is licensed under the MIT License. You are free to make a copy of the project for your own purposes and customize this README file to suit your specific project requirements.
