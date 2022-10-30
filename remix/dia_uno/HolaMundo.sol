// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract HolaMundo {
    string saludo; // ""

    // setter
    function cambiarSaludo(string memory _nuevoSaludo) public {
        saludo = _nuevoSaludo;
    }

    // getter -> mettodo de lectura
    // public -> interactuar desde afuera
    // view -> indica metodo de solo lectura
    function leerSaludo() public view returns (string memory) {
        return saludo;
    }
}
