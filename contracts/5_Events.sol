// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Eventos {
    // Eventos
    // Disparar un evento cada vez que se guarda un saludo
    // _position - position en la que se desea guardar el saludo
    // _nuevoSaludo - string que representa al nuevo saludo
    event CambioDeSaludo(uint256 _position, string _nuevoSaludo);

    // Disparar un evento cuando se asocia un 'address' con una edad
    // _account - address para el cual se asocia la edad
    // _edad - nueva edad para asociar con un address
    event NuevaEdadParaAddress(address _account, uint256 _edad);

    // position => saludo
    mapping(uint256 => string) listaSaludos;

    // mapping address a edad
    mapping(address => uint256) public edadPorAddress;

    function setEdadPorAddress(address _account, uint256 _edad) public {
        edadPorAddress[_account] = _edad;
        emit NuevaEdadParaAddress(_account, _edad);
    }

    // SETTER
    function setSaludo(uint256 _position, string memory _nuevoSaludo) public {
        // guardando en el mapping;
        listaSaludos[_position] = _nuevoSaludo;
        emit CambioDeSaludo(_position, _nuevoSaludo);
    }
}
