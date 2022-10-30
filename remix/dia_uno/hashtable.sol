// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Mapping {
    /**
        Accounts | Balances 

        Lee         1000
        Carlin      5000
        JDiego      10000
        ....
        tipo de dato de una billetera: address
    */
    // estoy asociando un address con un valor entero
    // key: address, valor: uint256
    mapping(address => uint256) balances;

    // setter del mapping
    function actualizarBalance(address account, uint256 balance) public {
        balances[account] = balance;
    }

    // name => edad
    // string => uint256
    mapping(string => uint256) nombreAEdad;

    function guardarNombreAedad(string memory nombre, uint256 edad) public {
        nombreAEdad[nombre] = edad;
    }

    function leerNombreAEdad(string memory nombre)
        public
        view
        returns (uint256)
    {
        return nombreAEdad[nombre];
    }

    // address => bool
    // uint256 => string

    // getter del mapping
    function leerBalances(address account) public view returns (uint256) {
        return balances[account];
    }

    // dueño => spender => cantidad de permiso
    // var arr = [[1,2,3], [4,5,6], [7,8,9]];
    //  3 => arr[0][2]
    //
    /**         0       1       2
        0       1       2       3
        1       4       5       6
        2       7       8       9

        arr[2][2] // 9
    
    */
    mapping(address => mapping(address => uint256)) permisos;

    function actualizarPermiso(
        address owner,
        address spender,
        uint256 amount
    ) public {
        permisos[owner][spender] = amount;
    }

    function leerPermisos(address owner, address spender)
        public
        view
        returns (uint256)
    {
        return permisos[owner][spender];
    }
}
