// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Constructores {
    string saludo;
    uint256 contador;

    constructor(string memory _saludo) {
        saludo = _saludo;
        contador = 10000;
    }

    // function guardarSaludo(string memory _saludo) public {
    //     saludo = _saludo;
    // }

    // function settearContador() public {
    //     contador = 10000;
    // }

    function leerSaludo() public view returns (string memory) {
        return saludo;
    }
}
