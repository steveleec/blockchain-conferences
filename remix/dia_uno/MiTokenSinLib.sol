/**
     CONSIDERACIONES PARA CREAR UNA CRIPTOMONEDA: estabdar ERC29

    // metodos de lectura (view)
    1. decimales - metodo que devuielve la cantidad de decimales a usar
    2. name - devuelve el nombre del token
    3. owner = indica la perosna que publico el contrato (no es parte del ERC)
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

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MiTokenSinLib {
    // 1. decimales - metodo que devuielve la cantidad de decimales a usar
    uint256 decimals_ = 18;

    function decimals() public view returns (uint256) {
        return decimals_;
    }

    // 2. name - devuelve el nombre del token
    string nombreDelToken = "Mi Primer Token Sin Lib";

    function name() public view returns (string memory) {
        return nombreDelToken;
    }

    // 4. symbol
    string simboloDelToken = "MPRSNLB";

    function symbol() public view returns (string memory) {
        return simboloDelToken;
    }

    // totalSupply
    uint256 public totalAcuniado;

    function totalSupply() public view returns (uint256) {
        return totalAcuniado;
    }

    // conocer mi balances de tokens en el smart contract
    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }

    // definir un mapping que me ayude a guardar balances de cuentas
    mapping(address => uint256) balances;

    function mint(address cuenta, uint256 cantidadTokens) public {
        require(cuenta != address(0), "Envio a cuenta sin llave privada");

        // balances[cuenta] = balances[cuenta] + cantidadTokens;
        balances[cuenta] += cantidadTokens;
        totalAcuniado += cantidadTokens;
    }

    // 8. transfer - 2 args: address to, cantidad - transfiere de la persona que llama el metodo a to
    function transfer(address to, uint256 cantidadTokens) public {
        require(to != address(0), "Envio a cuenta sin llave privada");

        uint256 balanceDelQueLlama = balances[msg.sender];
        require(
            balanceDelQueLlama >= cantidadTokens,
            "No tiene suficientes tokens"
        );

        balances[msg.sender] -= cantidadTokens;
        balances[to] += cantidadTokens;
    }

    // 10. approve: la persona que llama el metodo da permiso. 2 args:
    //     - spender: a quien se le da permiso
    //     - amount: cantidad de permiso en tokens
    // duenio => spender => cantidad
    //  X     =>    Y    =>  valor en (X,Y)
    mapping(address => mapping(address => uint256)) permisos;

    function approve(address spender, uint256 cantidadTokens) public {
        permisos[msg.sender][spender] = cantidadTokens;
    }

    // consulta cantidad de permiso otorgado
    function allowance(address duenio, address spender)
        public
        view
        returns (uint256)
    {
        return permisos[duenio][spender];
    }

    // 9. transferFrom - 3 args:
    // - from: person a quien se le descontara los tokens
    // - to: persona que recibira los tokens
    // - amount: cantidad de tokens a mover
    // * para ejectuar esta transaccion, 'from' tiene que haber dado permiso a la persona
    //     qye llama el metodo
    // Yo Lee (el que llama el metodo) quiero transferir los Tokens de Carlin a Lourdes
    function transferFrom(
        address from,
        address to,
        uint256 cantidadTokens
    ) public {
        require(to != address(0), "Envio a cuenta sin llave privada");

        uint256 permisoDadoAlQueLlamaEsteMetodo = permisos[from][msg.sender];
        require(
            permisoDadoAlQueLlamaEsteMetodo >= cantidadTokens,
            "No tienes suficiente permiso"
        );

        uint256 balanceFrom = balances[from];
        require(
            balanceFrom >= cantidadTokens,
            "Origen no tiene suficientes tokens"
        );

        balances[from] -= cantidadTokens;
        balances[to] += cantidadTokens;

        permisos[from][msg.sender] -= cantidadTokens;
    }

    // SOlidity
    // int => integer           ( negativos, zero y positivos)
    // int256 => [-2^256 - 2^256-1]
    // uint => unsigned integer (solo positivos) [0 - 2^256-1]
}
