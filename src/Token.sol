// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Token {
    string tokenName = "Token";
    string tokeAbbreviation = "TKN";
    uint256 totalSupply;

    mapping(address => uint256) balances;

    function mint(address _account, uint256 _amount) public {
        balances[_account] += _amount;
        totalSupply += _amount;
    }

    function burn(address _account, uint256 _amount) public {
        require(balances[_account] >= _amount, "NOT_ENOUGH_BALANCE");
        balances[_account] -= _amount;
        totalSupply -= _amount;
    }
}
