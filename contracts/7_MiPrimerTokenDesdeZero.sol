// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ERC20Generic {
    /**
      1. Una criptomoneda debería tener un <u>nombre</u> que lo identifique
      2. Una criptomoneda debería tener un <u>símbolo</u> que lo identifique
      3. Definir la cantidad de <u>decimales</u> del token (normalmente hay 18 pero otros tokens tienen 6, como el USDC)
      4. Internamente debería llevar la <u>cuenta de los balances</u> de cada persona que tiene criptomoneda
      5. Llevar la <u>cuenta del total de tokens</u> repartidos
      6. Método que permite la <u>acuñación</u> de tokens a favor de una cuenta en particular (`mint`)
      7. Método que permite <u>quemar</u> (burn) tokens. La lógica detrás de esto es que genera deflación (menos dinero en la economía)
      8. Método que permite <u>transferir</u> tus propios tokens a una segunda persona (método `transfer`)
          * Internamente validar que el usuario tiene más tokens de los que quiere enviar
      9. Llevar la cuenta de los balances de tokens a gastar que los mismos dueños (del token) han <u>autorizado a otras cuentas para gastar</u> en su representación
      10. Método que permite <u>transferir tokens en nombre</u> de una segunda persona con previa aprobación de la segunda persona (método `transferFrom`)
          * Validar que esa segunda persona tiene más tokens de lo que se planea enviar
      11. Definir métodos para incrementar el permiso de gastar tokens de otra persona
      12. Disparar eventos de Transferencia cada vez que se transfieren tokens de un lado a otro. Dispararar eventos de Aprobación cada vez que una cuenta le da permiso a otra para gastar sus tokens 
      13. Método para visualizar el total de tokens de una cuenta
      14. Método para visualizar la cantidad de tokens a gastar en nombre de otra persona con su previo permiso
   */

    //   5. Llevar la <u>cuenta del total de tokens</u> repartidos
    uint256 totalSupply;

    //   4. Internamente debería llevar la <u>cuenta de los balances</u> de cada persona que tiene criptomoneda
    //      Es decir, a cada billetere se le debe asociar la cantidad de tokens que tiene
    mapping(address => uint256) balances;

    //   9. Llevar la cuenta de los balances de tokens a gastar que los mismos dueños (del token) han <u>autorizado a otras cuentas para gastar</u> en su representación
    mapping(address => mapping(address => uint256)) _allowances; // permisos

    //   12. Disparar eventos de Transferencia cada vez que se transfieren tokens de un lado a otro. Dispararar eventos de Aprobación cada vez que una cuenta le da permiso a otra para gastar sus tokens
    event Transfer(address from, address to, uint256 value);

    //   1. Una criptomoneda debería tener un <u>nombre</u> que lo identifique
    function name() public pure returns (string memory) {
        return "My primer token";
    }

    //   2. Una criptomoneda debería tener un <u>símbolo</u> que lo identifique
    function symbol() public pure returns (string memory) {
        return "MPTK";
    }

    //   3. Definir la cantidad de <u>decimales</u> del token (normalmente hay 18 pero otros tokens tienen 6, como el USDC)
    function decimals() public pure returns (uint256) {
        return 18;
    }

    //   6. Método que permite la <u>acuñación</u> de tokens a favor de una cuenta en particular (`mint`)
    //      Los parámetros son la billetera (address) que recibirá los tokens y la cantidad de tokens
    function mint(address _account, uint256 _amount) public {
        totalSupply += _amount;
        balances[_account] += _amount;

        emit Transfer(address(0), _account, _amount);
    }

    // 7. Método que permite <u>quemar</u> (burn) tokens. La lógica detrás de esto es que genera deflación (menos dinero en la economía)
    function burn(address _account, uint256 _amount) public {
        totalSupply -= _amount;
        balances[_account] -= _amount;
        emit Transfer(_account, address(0), _amount);
    }

    // 8. Método que permite <u>transferir</u> tus propios tokens a una segunda persona (método `transfer`)
    function transfer(address _account, uint256 _amount) public {
        balances[msg.sender] -= _amount;
        balances[_account] += _amount;

        emit Transfer(msg.sender, _account, _amount);
    }

    //   10. Método que permite <u>transferir tokens en nombre</u> de una segunda persona con previa aprobación de la segunda persona (método `transferFrom`)
    //       Lleva parámetros
    //       - la cuenta de la persona que autorizó la transferencia
    //       - La cuenta de la emprepsa que recibirá los toens
    //       - la cantidad de tokens ser transferidos
    function transferFrom(
        address _sender,
        address _recipient,
        uint256 _amount
    ) public {
        // verificar permiso
        uint256 allowance_ = _allowances[_sender][msg.sender];
        require(allowance_ >= _amount, "No tiene permiso");

        // tranferir entre dos cuentas
        balances[_sender] -= _amount;
        balances[_recipient] += _amount;

        _allowances[_sender][msg.sender] = allowance_ - _amount;
    }

    //   11. Definir métodos para incrementar el permiso de gastar tokens de otra persona
    //       Este método solo puede ser llamado por la persona que desea otorgar el permiso a otra
    function approve(address spender, uint256 amount) public returns (bool) {
        _allowances[msg.sender][spender] = amount;
        return true;
    }

    // 13. Método para visualizar el total de tokens de una cuenta
    function balanceOf(address _account) public view returns (uint256) {
        return balances[_account];
    }

    // 14. Método para visualizar la cantidad de tokens a gastar en nombre de otra persona con su previo permiso
    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256)
    {
        return _allowances[_owner][_spender];
    }
}
