// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Humano {
    function saludoHumano() public pure returns (string memory) {
        return "Hola, como vamos. Soy Humano";
    }
}

contract Hombre is Humano {
    function saludoHombre() public pure returns (string memory) {
        return "Hola, como vamos. Soy Hombre";
    }

    // Llamando al método 'saludar' del papá
    function bienvenidaDeHumano() public pure returns (string memory) {
        return super.saludoHumano();
    }

    function bienvenidaDeHumano2() public pure returns (string memory) {
        return Humano.saludoHumano();
    }
}

contract Marcos is Humano, Hombre {
    function saludoMarcos() public pure returns (string memory) {
        return "Hola, como vamos. Soy Marcos";
    }

    // llamando al contrato papá
    function bienvenidaDeHombre() public pure returns (string memory) {
        return super.saludoHombre();
    }

    // llamando al contrato abuelo
    function saludoDeHumano() public pure returns (string memory) {
        return super.saludoHumano();
    }
}
