// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Deposit is ERC20 {
    constructor() ERC20("Webclues", "WEB") {}

    function deposit(uint256 amount) payable public {
        require(msg.value == amount);
        
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
