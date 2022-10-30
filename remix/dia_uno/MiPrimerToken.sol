// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MiPrimerToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Mi Primer Token", "Mprtk") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}

/**
    En el blockchain no esite el punto flotante
    3/5 = 0
    9/10 = 0
    11/10 = 1

    10 = 10
    5 = 5 
    1 = 1
    // fracciones de critp
    0.5 = 0
    0.05 = 0
    // incluir decimals 1 crupto es 100
    100 = 100
    50 = 50
    1 = 1
    10000
    // 1000000 quiero enviar una microcentesima
    // asumiendo que hay 6 decimales
    si recibes 
    1 * 10 ^ 18 => equivale a una cripto

    CONSIDERACIONES PARA CREAR UNA CRIPTOMONEDA: estabdar ERC29

    // metodos de lectura (view)
    1. decimales - metodo que devuielve la cantidad de decimales a usar
    2. name - devuelve el nombre del token
    3. owner = indica la perosna que publico el contrato
    4. symbol - devuelve el simbolo del token
    5. totalSupply - devuelva el total de suministro

    // metodos de escritura
    7. mint - dos argumetos: address y cantidad - acuñar monedas a favor de address
    8. transfer - 2 args: address to, cantidad - transfiere de la persona que llama el metodo a to
    9. transferFrom - 3 args:
        - from: person a quien se le descontara los tokens
        - to: persona que recibira los tokens
        - amount: cantidad de tokens a mover
        * para ejectuar esta transaccion, 'from' tiene que haber dado permiso a la persona
            qye llama el metodo
    10. approve: la persona que llama el metodo da permiso. 2 args:
        - spender: a quien se le da permiso
        - amount: cantidad de permiso en tokens
    11. burn - quema de tokens
*/
