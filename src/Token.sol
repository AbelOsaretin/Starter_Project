// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Token {
    string tokenName = "Token";
    string tokeAbbreviation = "TKN";
    uint256 totalsupply;

    mapping(address => uint256) balances;

    function mint(address _account, uint256 _amount) public {
        balances[_account] += _amount;
        totalsupply += _amount;
    }

    function burn(address _account, uint256 _amount) public {
        require(balances[_account] >= _amount, "NOT_ENOUGH_BALANCE");
        balances[_account] -= _amount;
        totalsupply -= _amount;
    }

    function balanceOf(address _account) public view returns (uint256) {
        return balances[_account];
    }

    function totalSupply() public view returns (uint256) {
        return totalsupply;
    }

    function name() public view returns (string memory) {
        return tokenName;
    }

    function symbol() public view returns (string memory) {
        return tokeAbbreviation;
    }
}
