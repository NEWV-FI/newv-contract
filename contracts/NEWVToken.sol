// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "@openzeppelin/contracts/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NEWVToken is ERC20,Ownable{

    using SafeMath for uint256;
    using Address for address;

    constructor()
    ERC20("Newv Finance",'NEWV')
    public {}

    function mint(address account, uint256 amount) public onlyOwner{
        return _mint(account, amount);
    }
}
