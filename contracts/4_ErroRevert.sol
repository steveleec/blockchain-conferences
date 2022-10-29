// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract RevertRequyire {
    // mapping address a edad
    mapping(address => uint256) public edadPorAddress;

    function setEdadPorAddress(address _account, uint256 _edad) public {
        edadPorAddress[_account] = _edad;
    }

    function setEdadPorAddressManejaError(address _account, uint256 _edad)
        public
    {
        require(_edad >= 30, "Edad menor a 30");
        edadPorAddress[_account] = _edad;
    }

    function setEdadPorAddressManejaError2(address _account, uint256 _edad)
        public
    {
        if (_edad <= 29) {
            revert("Edad menor a 30");
        }

        edadPorAddress[_account] = _edad;
    }
}
