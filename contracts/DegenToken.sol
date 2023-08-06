// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    struct Prize {
      uint price;
      string name;
    }

    event RedeemEvent(address indexed _from, uint8 index);

    Prize[] public prizeList;

    constructor() ERC20("Degen", "DGN") {
        prizeList.push(Prize(1776, "Eagle T-shirt"));
        prizeList.push(Prize(1337, "Ape T-shirt"));
        prizeList.push(Prize(7003, "Catgirl T-shirt"));
    }

    function decimals() public override pure returns (uint8) {
        return 0;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeemPrize(uint8 index) public {
        require(index < prizeList.length);
        _burn(msg.sender, prizeList[index].price);
        emit RedeemEvent(msg.sender, index);
    }
}
