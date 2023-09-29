# EthAVaxInterModule2Project
Create a simple contract with 2-3 functions. Then show the values of those functions in frontend of the application.
# Steps to run the codebase 

$ npm install
$ npm start

navigate browser to localhost:3000

-----------------------------
## Tech Stack

React Js
Solidity

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

# Structure of files in the codebase

src Folder -
    Contracts - 
        BankApp.sol - You can view the smartcontract used in this code 
        bank_app_abi.json - The abi file of the smartcontract.

The smart contract is deployed on Test BSC Network.

### Contract Address - 0x59eFE99aA926a79edEA31F7ED3b2661b1F9e2F62

## Flow of smart contract

1.Firstly connect your wallet by clicking on connectwallet button(Make sure you have test BNB in your wallet).
2.You need to create the account by clicking on createAccount  button
3.You can check whether your account is listed in the network by clicking on checkAccountExists Button
4.Next you can deposit the balance into your account by entering the number in the textbox.
5.You can check the balance in the bank account using Account Balance button.
6.You can transfer your funds in the bank account to another bank account(Make sure that account is also listed in the network)
7.You can withdraw funds using Withdraw button.



## In App.js you can find all these functions

connectWalletHandler - For connecting the metamask wallet
AccoutChangedHandler - Chainging account from metamask can cause this function to work
chainChangedHandler - Chainging the chain network in the metamask can cause this function to work
updateEthers - This function helps in communicating with the abi,deployed smart contract and the provider network of the metamask

### `let tempProvider = new ethers.providers.Web3Provider(window.ethereum);`
###	`let tempSigner = tempProvider.getSigner();`
### `let tempContract = new ethers.Contract(contractAddress, simple_token_abi, tempSigner)` - These are the steps for integrating Smartcontract with the Frontend.

createAccount - Creates the Account in the Bank Dapp
checkAccountExists - Checks if the Account is listed in the Dapp
AccountBalance - Checks the balance of the account in the Bank
DepositBalance - For depositing the balance from your metamask wallet account to bank account
WithdrawBalance - For Withdrawing the balance from your bank account to metamask wallet address 
TransferHandler -For transferring the funds between accounts in the bank. Make sure both the banks are listed in the network.

## License
This contract is released under the [GNU GENERAL PUBLIC LICENSE]. See LICENSE file for more information.
Feel free to update and customize this README file to suit your specific project and requirements.
