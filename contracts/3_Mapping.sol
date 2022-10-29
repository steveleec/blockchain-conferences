// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MiPrimerContrato {
    string saludo; // empieza como un string vacío ('') por definición

    // position => saludo
    mapping(uint256 => string) listaSaludos;

    // mapping address a edad
    mapping(address => uint256) public edadPorAddress;

    // double mapping
    // es como crear una matriz (x, y) y guardar un valor en dicha coordenada
    // crear una matriz de deudores y acreedores con mapping
    /**
    Deudores =>     Marcos  |   Julian  |   Susan
    Acreedores
        Luis        100            0         200
        Carmen       0            200        300
        Raul        200           400        500

        * Marcos debe 100 a Luis
        * Marcos debe 0 a Carmen
        * Marcos debe 200 a Raul
        * ...
     */
    // acreedor => dedudor => deuda
    mapping(string => mapping(string => uint256)) deudas;

    // al llamar el setter métodos
    // deudas[Luis][Marcos] = 100
    // deudas[Luis][Susan] = 200
    // deudas[Carmen][Julian] = 200
    // deudas[Carmen][Susan] = 200
    // ...

    // SETTER
    function setSaludo(uint256 position, string memory _nuevoSaludo) public {
        saludo = _nuevoSaludo;

        // guardando en el mapping;
        listaSaludos[position] = _nuevoSaludo;
    }

    function setEdadPorAddress(address _account, uint256 _edad) public {
        edadPorAddress[_account] = _edad;
    }

    function guardarDeuda(
        string memory _acreedor,
        string memory _deudor,
        uint256 _deuda
    ) public {
        deudas[_acreedor][_deudor] = _deuda;
    }

    // GETTER
    function get() public view returns (string memory) {
        return saludo;
    }

    function getSaludo(uint256 position) public view returns (string memory) {
        return listaSaludos[position];
    }

    function getEdad(address _account) public view returns (uint256) {
        return edadPorAddress[_account];
    }

    function getDeuda(string memory _acreedor, string memory _deudor)
        public
        view
        returns (uint256)
    {
        return deudas[_acreedor][_deudor];
    }
}
