// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract RevertAndRequire {
    // billetera => edad
    mapping(address => uint256) edadPorAddress;

    event NuevaCuentaAsociadaConEdad(
        address account,
        uint256 edad,
        uint256 timestamp
    );

    function guardarEdadPorAddress1(address account, uint256 edad) public {
        require(edad < 40, "Edad mayor a 40 no se permite");
        // msg.sender
        // require -> 2 argumentos: logica y mensaje
        // si logica es true, continua con la operacion
        // si logica es false, muestra el error
        edadPorAddress[account] = edad;
        emit NuevaCuentaAsociadaConEdad(account, edad, block.timestamp);
    }

    function guardarEdadPorAddress2(address account, uint256 edad) public {
        if (edad >= 40) {
            revert("Edad mayor a 40 no se permite");
        }
        edadPorAddress[account] = edad;
    }

    // Como saber quien esta llamando el metodo
    // msg.sender -> variable global que captura el address
    //               de la persona que llama al contrato
    address caller;

    function quienLlamaAlMetodo() public {
        caller = msg.sender;
        // msg.sender es del tipo address
        edadPorAddress[msg.sender] = 33;
    }

    function leerCaller() public view returns (address) {
        return caller;
    }
}
