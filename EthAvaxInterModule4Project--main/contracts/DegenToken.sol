// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    struct Item {
        string name;
        uint256 redeemAmount;
    }

    mapping(uint256 => Item) public items;

    constructor() ERC20("Degen", "DGN") {
        items[1] = Item("Degen Gaming logo NFT", 1000);
        items[2] = Item("Degen Gaming Shirt NFT", 500);
        items[3] = Item("Degen Gaming Fighter NFT", 200);
        items[4] = Item("Degen gaming purchase coupon", 100);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
    
    function TransferToken(address _reciever, uint amount) external {
        require(balanceOf(msg.sender) >= amount, "Sorry, Not enough degan tokens available");
        approve(msg.sender, amount);
        transferFrom(msg.sender, _reciever, amount);
    }
        
    function redeem(uint256 item) external payable {
        Item storage selectedItem = items[item];
        require(bytes(selectedItem.name).length > 0, "Invalid redeem item");
        require(balanceOf(msg.sender) >= selectedItem.redeemAmount, "Insufficient balance to redeem");

        _burn(msg.sender, selectedItem.redeemAmount);
    }

    function showStore() external pure returns (string memory) {
        return "1. Degen Gaming logo NFT (1000 tokens) 2. Degen Gaming Shirt NFT (500 tokens) 3. Degen Gaming Fighter NFT (200 tokens) 4. Degen gaming purchase coupon (100 tokens)";
    }
}
