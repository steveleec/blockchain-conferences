// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Constructor {
    address public publicador;

    // position => saludo
    mapping(uint256 => string) listaSaludos;

    // mapping address a edad
    mapping(address => uint256) public edadPorAddress;

    constructor(uint256 _position, string memory _saludo) {
        publicador = msg.sender;

        listaSaludos[_position] = _saludo;
        edadPorAddress[msg.sender] = 33;
    }

    function quienEsPublicador() public view returns (address) {
        return publicador;
    }
}
