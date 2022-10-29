# **Blockchain Ethereum y Contratos Inteligentes - Workshop**

## **Ponente**

Lee Marreros

Senior Smart Contract Developer en [dcSpark.io](http://dcSpark.io), el primer side chain de Cardano. Cofundador y Líder en Blockchain del juego [Pachacuy.io](http://Pachacuy.io) (El Axie Infinity de South America). Desarollador Blockchain en [CuyToken.com](http://CuyToken.com), la primera empresa de criptocréditos del Perú. 5+ años de experiencia en compañías Fintech (e.g. Yodlee, Tenpo, FIDIS y CuyToken). Estudió Computer Programming Certificate en la Universidad de Santa Clara, California, USA. Graduado del bootcamp del programa inmersivo de Ingeniería de Software Hack Reactor, Los Ángeles. Graduado de Lean UX and Service Design Program (UTEC) y del diplomado de Finanzas Corporativas (UPC).

## **Temario**

- El blockchain de Ethereum
- ¿Qué son los Contratos Inteligentes?
- Introducción a la programación en Solidity
- Creación de una critpmoneda con Solidity
- Qué son los NFTs y su utilidad en la economía
- Creación de una colección NFTs con Solidity

## **Modalidad de Trabajo**

1. El desarrollo de las clases de programación está basado en casos de la vida real
2. Las herramientas de blockchain que se usarán en el desarrollo del código son consideradas estándar y buenas prácticas
3. Se planteará el desarrollo de una startup blockchain ficticia que será el punto de partida para el desarrollo de los Smart Contracts

## **Proyectos a desarrollar**

1. Creación de una criptomoneda (ERC20)
2. Desarrollo de una colección de NFTs

## **Proyectos desarrollados**

**<u>_Pachacuy (Axie Infinity de America del Sur)_</u>**

![image-20221001000121020](https://user-images.githubusercontent.com/3300958/193497016-7cb60c31-7a31-42a6-9ea1-18d74aafe9a1.png)

- Sinopsis: Juego que representa un mundo virtual en el cual un cuy (personaje principal - NFT) puede comprar tierras y establecer negocios dentro. Los cuyes visitantes hacen uso de los negocios. Estas transacciones tienen el potencial de generar ingresos para dueños y clientes.
- Hay creado su propia moneda llamada Pachacuy
- Toda la lógica del juego está desarrollado en Smart Contracts
- Publicado en Polygon
- Familia (17) de Smart Contracts interconectados
- Implementa diferentes estándares de tokens (ERC777, ERC1155)
- [Código del juego](https://github.com/cuytoken/pachacuy-smart-contracts/tree/master/contracts)
- [Testing](https://github.com/cuytoken/pachacuy-smart-contracts/tree/master/test)
- [White Paper](https://pachacuy.gitbook.io/pachacuy/)
- [Juego en producción](https://play.pachacuy.io/)

**<u>_Colección Moche_</u>**

![image-20221001161514110](https://user-images.githubusercontent.com/3300958/193497010-c53836d7-02f4-4236-8684-09623f5b5943.png)

1. Sinospsis: colección de 10,000 NFTs lanzado en la red Binance. El personaje principal es un cuy y fue creado con un algoritmo de generación de imágenes por capas.
2. Se utilizó un smart contract que sigue el estándar ERC721
3. [Página de compra](https://www.pachacuy.io/moches.php)
4. [Collección en vitrina de Tofu](https://tofunft.com/collection/pachacuy-moche/items)

**Introducción**

El Bitcoin, las criptomonedas y el blockchain ingresaron a escena el 2008 cuando de manera seudónica se publicó un whitepaper con una nueva visión de cómo transferir valor en el internet. Dicho whitepaper se llama "Bitcoin: a Peer-to-Peer Electronic Cash System" y fue publicado por Satoshi Nakamoto.

Según CoinMarketCap (empresa de estadísticas del mundo crypto), hasta septiembre del 2020, los cripto activos han llegado a superar los $350 billones de dólares americanos. Existen instituciones financieras importantes, como Fidelity, Investments y CME GRoup, están fuertemente involucradas. Además de ello, universidades importantes, como Harvard, Yale, Standford, dedican recursos a investigar este fenómeno. Otras empresas de redes sociales y pagos, como Facebook, PayPal, Visa y Square, y Banco Centrales, como la Reserva Federal de Estados Unidos y El Banco del Pueblo de China, están evaluando la posibilidad de crear sus propias criptomonedas.

_¿Cómo funciona y por qué es importante?_

Bitcoin fue el primer cripto activo en lograr una escala significativa de modo tal que se convirtió en el modelo y fundamento de todos los blockchain y proyectos crypto actuales.

Bitcoin puede ser entendido de dos maneras complementarias:

1. Es una solución a un viejo problema técnico
2. Es un fenómeno económico y ha creado nuevas oportunidades de negocio

#### Solución a un problema técnico

_Entendiendo el Bitcoin_

El Bitcoin fue creado por un seudónimo programador de computadoras llamado "Satoshi Nakamoto", quien publico un whitepaper en Octubre del 2008 titulado "Bitcoin: A peer-to-peer Electronic Cash System". En este documento, el autor describe la visión de cómo personas individuales pueden guardar, enviar y recibir cosas de valor de manera digital, sin intermediarios en los cuales confiar (como un banco o una pasarela de pago).

En Enero del 2009, después de que el whitepaper viera la luz, el software de Bitcoin fue liberado y el primer Bitcoin fue acuñado y la red bitcoin fue establecida.

_El problema que Bitcoin quiere resolver_

Consideremos un contexto inicial. Aunque gran parte de nuestra vida moderna está online, el manejo del dinero aún se hace de manera análoga. La capa de tecnología que maneja el dinero sigue siendo arcaica. Prueba de ello es el tiempo que demora hacer una transferencia de dinero hacia el exterior que va de dos a cuatro días. Incluso al pagar servicios públicos (luz, cable, etc), demora casi la misma cantidad de tiempo.

La razón detrás de ello es que transferir valor en el internet es realmente complicado. Muchísimo más difícil que transferir fotos, correos o mensajes de texto.

Imaginemos una simple transacción en la que Carlos desea enviar dinero a Marta. Sin embargo, dado no se encuentra cercanos físicamente, Carlos enviará un cheque Marta para que lo pueda cobrar. Si ambas personas se encuentran en el mismo banco, entonces es relativamente más sencillo hacer la verificación de fondos. Antes de entregarle el dinero a Marta, el mismo banco revisará que Carlos disponga de dicho balance. Si lo tiene, descuenta de la cuenta de Carlos y se lo entrega a Marta.

El problea surge cuando se quiere cobrar el cheque en un banco diferente al de Carlos. Según el [procedimiento para el cobro de cheques](https://www.bbva.pe/content/dam/public-web/peru/documents/personas/cuentas/servicios/cheque-de-gerencia/anexo-cheques-gerencia.pdf) del BBVA de Perú, existe una serie de pasos cuando se intenta cobrar un cheque de gerencia emitido por otro banco local. El quid del asunto detrás de este problema es que las bases de datos de ambos bancos están desconectadas y se require de una serie de verificaciones manules antes de poder proceder con el recojo del dinero. Veamos los procedimientos llevados a cabo en BBVA para el cobro de cheques:

> Para cobrar un cheque de gerencia emitido por otro banco local:
>
> - El asesor verifica la autenticidad del cheque
> - El beneficiario del cheque debe indicar en el reverso del cheque, nombre, número de DNI y firma como constancia del pago.
> - Se envía el cheque a la Unidad de Canje de la Oficina Principal, se digitaliza y se envía a la Cámara de Compensación Electrónica para el canje respectivo.
> - Se realiza el abono en la cuenta indicada por el beneficiario
>
> Para cobrar un cheque de gerencia emitido por otro banco local donde no hay oficinas del banco emisor:
>
> - El asesor verifica la autenticidad del cheque.
> - El beneficiario endosa el cheque
> - Se remite la información a la Cámara de Compensación Electrónica para el canje respectivo
> - Personal de la oficina lleva el cheque al Centro de Canje de la localidad para entregarlo al banco emisor
> - Pago del importe del cheque con abono en cuenta
> - Disponibilidad del dinero: hasta 7 días útiles.

_Una base de datos ditribuida y decentralizada_

La solución propuesta por S. Nakamoto fue la de crear una única base de datos distribuida que es accesible por todo el mundo. Cualquier persona será capaz de ver los balances de otras cuentas y además realizar transacciones en cualquier momento (24 horas). Además, esta base de datos no estará controlada por ninguna corporación, gobierno, persona o entidad. Esta es la misma solución que reside detrás de todos los diferentes blockchain que existen hoy en día. Lo que S. Nakamoto propuso fue la creación de un "libro mayor distribuido" (distributed ledger) que se pueda consultar y escribir "sin perder permiso" (permissionless) y además se mantiene "descentralizado" (decentralized).

En la siguiente figura, al lado derecho, se observa una base de datos en un modelo distribuido y decentralizado. Lo más resaltante es que permite la transferencia de valor directa, en una transacción de persona a persona (peer-to-peer - P2P), sin la necesidad de un intermediario central que controle y verifique las operaciones, como es el mundo tradicional. El desafío en este nuevo modelo es que el estado o la información que se guarde en la base de datos, se encuentre actualizada para todos los participantes de la red.

![image-20221028051259640](https://user-images.githubusercontent.com/3300958/198770509-5468d7ab-42c3-4dc9-81f7-7519091c28d8.png)

Lograr dicha sincronización para la base datos es en realidad un gran proplema técnico. Podemos tener réplicas de la misma base de datos en cada particpante, sin embargo, quién está realmente a cargo de actualizar dichas bases de datos. ¿Cómo te aseguras que todas las bases de datos mantengan la misma información? En otras palabras, ¿cómo logras el consenso acerca de lo que es preciso y verdadero? Ahí justamente es donde reside la innovación de los blockchains.

Los blockchains son capaces de (1) a un tiempo apropiado, (2) evitar a los malos actores (3) y lograr un consenso de todas las copias de las bases de datos que están distribuidas y decentralizadas.

_La transacción en el Bitcoin_

Para entender cómo se procensan las transacciones en el Bitcoin, sigamos el rastro de cómo Carlos podría enviar diez bitcoins a Marta:

1.  Carlos emite un mensaje a la red Bitcoin manifestando que desea enviar diez bitcoins. Para hacer ello, utiliza un password privado que solamente el conoce (llave privada - private key). Usa ese passwod para firmar su mensaje. De ese modo se sabe que se trata de Carlos porque es el único con ese password.

2.  Este mensaje es captado por las computadoras de la red Bitcoin que mantienen todos la misma base de datos actualizada. Estas computadores pueden confirmar que Carlos tiene diez bitcoins porque tienen acceso a la base de datos actualizada. Además, saben que es Carlos porque ha usado su password.

3.  Esta transacción es colocada en una "banca" esperando que una de las computadoras termine de procesar y confirmar dicha transacción. Aún la transacción está en proceso y no ha sido actualizada en ninguna base de datos. Al igual que la transacción de Carlos, hay muchas otras en espera

    En el gráfico se observa que Carlos y Marta tienen las mismas actualizaciones en la base de datos (representados por los cuadrados anaranjados).

![image-20221028060913537](https://user-images.githubusercontent.com/3300958/198770520-579c4233-8c7f-4f66-be49-d64d01906718.png)

4. En este punto los mineros (que son computadores de la red Bitcoin) juegan un papel importante. El trabajo de un minero es juntar transacciones que se encuentra en una "banca", es decir están en espera de ser confirmadas, para poder agruparlas y ponerlas en un bloque. Luego de ponerlas en bloque, el minero propone a la red que sea ese el bloque la nueva actualización en todas las bases de datos.

5. Muchos mineros compiten entre sí para que uno de ellos gane la oportunidad de colocar su bloque y las demás bases de datos se actualicen. Para poder escoger al minero ganador, el sistema les propone resolver un problema matemático. El primer minero que logre resolver dicho problema será el que incluya su bloque y toda bases de datos tendrán que actualizarse para reflejar dicho cambio. La recompensa por ser el primero, es que el sistema te otorga nuevos bitcoins recién acuñados y además recibe el costo de transacción que hizo la persona que inició la operación. De esta manera se incentiva a los mineros a que encuentren transacciones, las agrupen las, las pongan en un bloque, lo propongan y resuelvan el problema matemático con la intención de actualizar el estado del Blockchain.

   ![image-20221028062933242](https://user-images.githubusercontent.com/3300958/198770525-b815779c-cf96-4a32-8a52-19b07ac76986.png)

   En esta figura, además de Carlos y Marta (puntos azules), los mineros son incluidos (color azul). El rectángulo morado representa el nuevo bloque con la nueva información que incluye la transacción de Carlos y Marta. En este punto, solo un minero tiene el nuevo estado del Blockchain. Los demás participantes ven el antiguo estado del Blockchain.

6. Los demás mineros verán que hay un minero que propuesto la solución al problema matemático. Su verificación es súper sencilla y en cuanto verifiquen que la solución es correcta, cada minero actualizará su base de datos para reflejar las nuevas transacciones. Cuando eso sucede, la transacción de Carlos se considera finalizada.

_¿Por qué mantener las bases de datos actualizadas?_

Es importante saber que para poder competir en la inclusión de un nuevo bloque, éste depende de incluir el más reciente bloque puesto en la red Bitcoin. Por lo tanto, tienen una motivación para mantener las bases de datos actualizadas. Esta manera de poner un bloque después de otro es en realidad una arquitectura de base de datos llamada "blockchain".

_Transacciones fraudulentas_

Los participantes de la read examinan cada una de las transacciones incluidas en un bloque y rechazan aquellos con transacciones inválidas. Validar que una transacción es válida o no es relativamente sencilla y no costosa. Por otro lado, proponer una transacción fraudulenta es relativamente caro. Por lo tanto, no existe un fuerte aliciente para fraguar al sistema.

_Algoritmos de consenso_

Lo descrito desde el momento en que se propone el bloque, se selecciona al minero ganador, se verifica que su solución es correcta, se verifica que sus transacciones son válidas, se actualiza la base de datos y se desincentiva a fraguar al sistema, conforma el algoritmo de consenso de Bitcoin.

En la siguiente figura, todos los demás participantes de la red han aceptado el nuevo bloque de transacciones propuesto (rectángulo color morado). Por lo tanto, todos, otra vez, tienen la misma base de datos.

![image-20221028071815066](https://user-images.githubusercontent.com/3300958/198770530-b3c72f77-5ed7-432f-a249-c3f2bf51d126.png)

_Test del tiempo_

Lo más interesante de la solución planteado en Bitcoin, es que catorce años después, Bitcoin ha demostrado que funciona y puede soportar centenares de millones de transacciones que involucran billones de dólares. No ha sido hackeada hasta el momento. Esta innovación ha tenido un impacto significativo en el mundo.

#### Bitcoin es un fenómeno económico

Claramente, Bitcoin ha creado una nueva manera de transferir valor o activos de valor a través del internet. Existen tres áres en que se puede mostrar el impacto de Bitcoin:

_1- Transacciones de bajo costo, rápidas y disponibles 24/7_

Bitcoin ya representa una gran mejor en comparación con los actuales métodos de pago. Por ejemplo, el 12 de Abril del 2020 se transfirieron 161,500 bitcoins, equivalentes a $1.1 billones de dolares en ese momento, en una sola transacción. El costo de procesar esa transacción costó $0.68 dólares.

Contrastemos esa operación con una transferencia internacional de dinero en la que solo se puede transferir durante horarios de oficina, demora entre uno o dos días en finalizar y los fees van del 1% al 10%.

Bitcoin es un software creado en el cual no hay empleados y puede manejar transacciones millonarias en minutos y a cualquier hora del día desde cualquier parte del mundo a cualquier otro lugar.

Al igual que dicha transacción, miles otras de transacciones se procesan diariamente. Sin embargo, no se podría decir que el Bitcoin se podría usar para operaciones del día a día, como comprar un café. Ello se debe existe volatilidad en el precio y dificultad en la experiencia de usuario.

_2 - La creación de escases y derechos digitales_

La manera tradicional de poseer un activo era a través de una tercera parte que valida y corrobora la propiedad. Además, dicho registro de propiedad se guarda en una base de datos que le partenece a otra tercera parte. Por ejemplo, los juegos online mantienen un registro de los activos ganados y se guardan en su propio sistema. El banco mantiene la cuenta de nuestro balances en su base de datos. Sin embago, con los activos basados en crypto, este modelo cambia completamente.

Dado que la base de datos del blockchain está disponible para todo el mundo y no está controlado por una entidad, existe el mecanismo para registrar propiedad de una nueva manera. Incluso se podría argumentar que la red Bitcoin es más resiliente para guardar este tipo de información que los métodos tradicionales.

Otra perspectiva en relación a la moneda del Bitcoin, es que ésta tiene un número limitado de producción. La cantidad de bitcoins circulantes no sobrepasará la cantidad de 21 millones. Es muy sencillo probar que una persona tiene un balance en bitcoin y que además nadie podría disponer de ese balance a menos que la persona lo autorize. Incluso se refiern al bitcoin como "oro digital".

El "oro digital" no es la única creación de derechos y escases digital. Otra avenida para la popularidad de los blockchain, son los NFTs que se han usado en el arte, la música y los juegos blockchain.

Consideremos un item valioso en un juego blockchain. Dado que el usuario tiene la propiedad de dicho item cuyo registro se encuentra en el blockchain, fácilmente este item puede tener un mercado de segunda mano para poder comerciar. Incluso no es necesario realizar la transacción dentro del juego. El intercambiar activos digitales se hace mucho más flexible. Usando el blockchain, la propiedad de un activo puede ser fácilmente comprobada.

3 - Dinero programable

El blockchain permite a los usuario crear activos digitales que tengan ciertas reglas y condiciones para ser usados, como cualquier otra pieza de software. El dinero programable se crea en smart contracts y el cumplimiento de las reglas es de manera automática dado que lo ejecutan máquinas (software) que sigue instrucciones.

Con dinero programable podemos crear condiciones complejas como las siguientes:

- Carlos enviará dinero a Marta sí y solo sí el equipo favorito de Marta gana. Esto es muy parecido a un contrato
- Marta enviará dinero a Carlos solo si pasan tres meses desde la fecha actual. Muy parecido a como funciona un acuerdo de confianza.
- Carlos enviará dinero a Mirian sí y solo sí Marta está de acuerdo. Lo cual se parece una cuenta de depósito en garantía (escrow).

Gracias al blockchain y usando smart contracts, se puede programar condiciones más complejas para operar con dinero. Estas transacciones serán ejecutadas sin intermediarios. De esta manera, los smart contracts podría o reemplazar o incrementar las funciones de un banco, un notario, un abogado y contadores. Adicional a ello, se suma la rapidez, economía y transparencia de la transacción las 24 horas del día.

**Bitcoin vs Ethereum**

Bitcoin fue el primer blockchain lanzado (prima generación) y se considera el más simple de todos los blockchain actuales. Con Bitcoin, se pueden realizar un tipo reducido de transacciones: enviar, recibir, guardar bitcoins, crear simples cuentas de escrow (custodia) y trust (guardar por un tiempo).

En cambio, Ethereum, que pertenece a una segunda generación de blockchains, fue lanzada en el año 2015 con el objetido de extender las capacidades del blockchain de Bitcoin.

_Turing complete_

Ethereum fue diseñado para ser Turing complete. Lo cual quiere decir que se puede programar para hacer cualquier cosa que una computadora normal podría hacerlo. Dado que Ethereum ofrece la capacidad de programar, este blockchain se ha convertido en el predilecto para desarrollar diferentes tipo de dinero programado (a través de smart contracts). Por ejemplo, hasta el día de hoy se han registrado operaciones de levantamiento de fondos en Ethereum, como si fuera Wall Street. Se han registrado el otorgamiento de préstamos con colateral. Así también se han invertido en el desarrollo de casas de cambio de cryptomonedas que están respaldadas por inversiones millonarias.

_Ethereum > Bitcoin_

No necesariamente las mayores capaciades que tiene Ethereum lo hace mejor que Bitcoin. Al incrementar la complejidad del blockchain, también se incrementan los riesgos de seguridad. En otras palabras, mientras más simple sea un blockchain, más seguro será. La simplicidad de Bitcoin es lo que lo hace más segura y la de la confianza a las personas de introducir grandes sumas de dinero para obtener el "oro digital". En cambio, Ethereum atrae porque permite el desarrollo de aplicaciones más complejas.

## **Blockchain Framework:**

![image-20221001173609057](https://user-images.githubusercontent.com/3300958/193497008-44d89e72-3b9d-413c-af32-68bc8a3a5b54.png)

1. Transacción: unidad fundamental dentro de un blockchain. Cualquier operación llevada a cabo se atomiza en una transacción que es enviada por un usuario para ser incluida en el siguiente blocke.
2. Wallet: Es como una cuenta de banco. Se usa para ejecutar transacciones. Así mismo, una wallet puede llevar la cuenta de los activos de una dirección (address). La wallet en sí misma no almacena los activos, solo muestra los balances.
3. Signature: Una firma digital por el usuario es necesaria firmar una transacción antes de que sea incluida en la network,
4. Mempool: Luego de que una transacción es firmada, se incluye en la Mempool. Este es el lugar donde todas las transacciones esperan por un validador para que puede incluirlo en el bloque.
5. Network: la naturaleza de la red de nodos que mantiene en pie al Blockchain es distribuida. Cualquiera está en la posibilidad de obtener una copia desde la primera hasta la última transacción del Blockchain (no centralización de la información). Bajo este modelo, la red es capaz de determinar qué transacciones son válidas.
6. Consensus: Es una manera de crear un mecanismo de votación entre los nodos. PoS, PoW.
7. Hashing: es el proceso de generar una huella digital única. Se utilizan funciones que hacen Hash cuyo input es la data. Un cambio infinitesimal en la data y el hash obtenido es completamente diferente. Ello invalidaría al bloque.
8. Block: Es un contenedor de todas las transacciones que se añadirán al blockchain. Estos bloques están linkeados unos con otros mediante valores de hash.
9. Blockchain: Es un libro público en el cual los bloques están linkeados, lo cual nos permite ver si las transacciones son validas o no.

## **Ethereum Virtual Machine**

**_Ambiente virtual_**

EVM significa Máquina Virtual de Ethereum. En simple, EVM es el sistema operativo de Ethereum. Dentro de esto, una máquina virtual puede proporcionar un entorno de ejecución para ejecutar contratos inteligentes.

Por lo general, una vez que se compila un contrato inteligente, genera dos salidas: Bytecode y ABI. El primero se carga en el EVM para el cálculo. El segundo es más legible por humanos. El código de bytes se distribuye a cada nodo que se ejecuta dentro de la red. El código de bytes se ejecuta y genera un "cambio de estado", que solo podría lograrse mediante el consenso de cada nodo. Eso convierte a la EVM en una "máquina de estado distribuida": rastrea el estado del Blockchain en cada transacción.

Existen diferentes lenguajes de programación que pueden ser entendidos por la EVM (Solidity, Vyper, etc.).

**_Computadora Mundial_**

La máquina virtual de Ethereum funciona como una sola entidad mantenida por miles de computadoras interconectadas llamadas nodos, que también se conoce como la computadora mundial. Estas computadoras ejecutan una implementación del cliente Ethereum y tienen una estructura de igual a igual (Peer to Peer - P2P). Su trabajo principal es procesar y validar transacciones, así como asegurar y estabilizar todo el ecosistema. Por eso, el EVM podría verse como un motor de procesamiento y una plataforma de software que utiliza computación descentralizada.

**_Estado de la cadena de bloques_**

Dentro de la EVM se definen las reglas para crear un nuevo estado válido de bloque a bloque. Una vez que se ejecutan los contratos inteligentes, el EVM calcula el nuevo estado de la red después de agregar un nuevo bloque a la cadena. En cualquier momento dado, la EVM tiene un y solo un estado 'canónico'. Es en este entorno que viven las cuentas de Ethereum y los contratos inteligentes. El protocolo Ethereum tiene como objetivo mantener esta máquina especial realizando operaciones ininterrumpidas.

En otras palabras, el objetivo de EVM es averiguar el estado general de Ethereum para cada bloque en el Blockchain. Utiliza un libro mayor (public ledger) distribuido donde se rastrean las transacciones y, al mismo tiempo, impone reglas a los usuarios sobre cómo interactuar con la red.

**_Turing completo_**

Puede realizar pasos lógicos para la función computacional. Es capaz de hacer cualquier cálculo o programa informático posible. Detrás de esta característica se encuentran los OPCODES que son como una lista operaciones aisladas que arman como piezas de lego.

**_Gas_**

A cada instrucción de EVM se le asigna un costo. Eso ayuda a mantener un recuento de los costos totales de cualquier transacción determinada. Las unidades de gas miden el costo de ejecutar operaciones en EVM. Para calcular el total de gas a gastar se cuentan el total de OPCODES a usar dado que cada uno de ellos tiene un costo espécifico. Cualquier transacción empieza en 21000 gas.

**_OPCODES (códigos de operación)_**

El EVM es capaz de ejecutar instrucciones a nivel de máquina conocidas como OPCODES (códigos de operación). Estos códigos de operación se utilizan para definir cualquier operación particular dentro del EVM. Hay códigos de operación especiales para operaciones aritméticas, así como para leer desde el almacenamiento. Cada código de operación es un byte. Se puede utilizar un máximo de 256 códigos de operación. [Ver lista completa](https://ethereum.org/en/developers/docs/evm/opcodes/).

![image-20221001194415274](https://user-images.githubusercontent.com/3300958/193497004-445908d4-23d9-4054-acaf-2f455a784a26.png)

**_Contratos inteligentes_**

Los contratos inteligentes son líneas de código utilizadas por dos o más partes para realizar transacciones entre sí. Dado que los contratos inteligentes se cargan y ejecutan en el EVM, no se necesita un tercero fiscalizador. Un contrato inteligente es una lista de operaciones que se ejecutarán cuando se cumplan ciertas condiciones. Estas operaciones pueden ser muy diferentes (por ejemplo, creación de tokens, transferencia de fondos) y estarán guiadas por código y ejecutados por máquina.

**_Bytecode_**

![image-20221001200726257](https://user-images.githubusercontent.com/3300958/193497003-3d281061-3387-4ce1-b9c0-bca9b56d0bb6.png)

El Smart Contract se compila a bytcode y ABI. El bytecode se puede traducir en OPCODES.

[Ver ejemplo de NFT del juego Pachacuy](https://polygonscan.com/address/0xc9Fd34bDA1965f2965C5238838EbB230482167B0#code)

**_ABI (application binary interface)_**

![image-20221001202149628](https://user-images.githubusercontent.com/3300958/193497002-f9fa12d0-e1cb-47b6-8019-fce5682d79e2.png)

Usado por el front para poder instanciar el objeto 'Contrato' de las librerías como Ethers.js. Es una interface en el cual se definen qué parámetros serán pasados, qué valores ser retornarán, nombres de los métodos y otras características de los métodos y propiedades del smart contract.

## **Programando en Solidity**

Vamos a aprender a programar en Solidity con el objetivo de desarrollar una startup ficticia que desea llevar al mercado sus NFTs.

El primer Smart Contract que vamos a desarrollar será la criptomoneda (token ERC20) de la empresa que será publicado en una Testnet llamada Goerli. Antes de lograr ello, revisemos algunos conceptos sobre Solidity.

**_¿Qué es Solidity?_**

- Es un lenguaje orientado a objetos
- Lenguaje de alto nivel para la implementación de Smart Contracts
- "El código es la ley": un smart contract luego de publicado imposibilia su modificación y se ejecuta por una máquina tal cual fue redactado
- Lenguaje de llaves diseñado para desarrollar código compatible con la Máquina Virtual de Ethereum (EVM)
- Influenciado por C++, Python y Javascript
- Es estáticamente tipado, soporta la herencia (de objetos), librerías y definición de tipos de datos complejos definidos por el usuario

**_Dos tipo de cuentas en Ethereum_**

![image-20221001222155465](https://user-images.githubusercontent.com/3300958/193497001-1ad024fe-ed54-4ead-a926-b45d7c58bdb1.png)

- EOA (Externally owned account): Son usuarios (personas) que posee una llave privada. No posee código. Pueden mantener un balance positivo de Ether. Firma transacciones. Puede transferir activos (assets).
- SCA (Smart Contract Account): Son cuentas controladas por código dentro del Smart Contract.

**_Mi primer contrato en Solidity_**

1_MyFirstContract

En [Remix](https://remix.ethereum.org/), crear un nuevo archivo llamada

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract MiPrimerContrato {
    string saludo;

    function set(string memory _nuevoSaludo) public {
        saludo = _nuevoSaludo; // no se necesita 'this'
    }

    function get() public view returns (string memory) {
        return saludo;
    }
}
```

- La primera línea nos indica la licencia del código a ser publicado de una manera en que la máquina puede entender. Imprescindible cuando se desea publicar el contrato en una red blockchain.
- La siguiente línea nos indica la versión de Solidity en la cual el código fue escrito. La palabra clave `pragma` hace referencia a instrucciones para que el compilador sepa cómo tratar el código. Cada versión de compilador podría generar un diferente output con respecto al anterior. Al especificiar versiones te aseguras compile como lo especificas según las versiones.
- Un contrato es una colección de código y estado (code + state) que vive dentro de una dirección específica en el Blokchain. En este contrato definimos una variable llamda `saludo` del tipo `string`. Se puede entender esta variable como si fuera una entrada en una base de datos que se puede consultar (usando `get`) y modificar (mediante `set`).

La gran diferencia de escribr este mismo código en otro lenguage de programación, como Javascript, es que para lograr lo mismo tendríamos que levantar un servidor y una base de datos. Además de la creación de la clase (Class - ES6) que lleve los mismo métodos, se requiriría métodos para poder guardar y leer información de la base de datos. Ello sin contar la creación de la conexión con la base de datos.

Usando Smart Contracts, el "servidor" y la "base de datos" están dados por la Máquina Virtual de Ethereum (EVM). Las lecturas y escrituras a raíz de la ejecución del código, se hace desde y sobre el blockchain.

**_Publicar el Smart Contract_**

1. Para publicar el contrato usar Metamask en la red Testnet de Goerli. Previamente solicitar Ether en algún [faucet de Goerli](https://goerlifaucet.com/).

![image-20221002063129132](https://user-images.githubusercontent.com/3300958/193497000-4ac8b832-d990-4631-8f83-d303c4b27494.png)

2. En `ENVIROMENT` escoger `Injected Provider - Metamask`, lo cual conectará el IDE de Remix con una billetera de Metamask.
3. En `CONTRACT` asegurar que está seleccionado el contrato que se desa publicar
4. Al hacer clic en `Deploy`, abrirá un pop-up de Metamask para poder confirmar y firmar la transacción, lo cual hará posible la creación del Smart Contract en el Blockchain.

<img src="https://user-images.githubusercontent.com/3300958/193496997-8adc83b8-bc59-446e-b748-add08ad19be0.png" alt="image-20221002063404065" style="zoom:30%;" />

5. Cuando la transacción haya terminado, se podrá visualizar dentro de la pestaña de `Actividad`. Hacer click en `Implementación de contrato` y se abrirá otra ventana. En dicha ventana hacer click en `Ver en el explorador de blockes`.

<img src="https://user-images.githubusercontent.com/3300958/193496996-6e1893fe-7356-4f8f-9626-6e8d978efb3a.png" alt="image-20221002065253371" style="zoom:30%;" />

6. Serás dirigido a Goerli.etherescan.io donde podrás ver los detalles de la transacción (publicación del Smart Contract). Se puede observar que el contrato ha sido creado en la siguiente dirección: `0xc5bccf767704432a3a22318a0df3067d9a3fc217`. Esta misma dirección servirá para hacer su posterior verificación.

![image-20221002070341543](https://user-images.githubusercontent.com/3300958/193496993-ecfc7741-1d7e-4e69-a7ec-2e07f0b593b3.png)

**_Verificación de un Smart Contract_**

1. Para verificar, hacer click en la dirección del contrato creado en el anterior paso. O en su defecto, ir al siguiente link `https://goerli.etherscan.io/address/0xc5bccf767704432a3a22318a0df3067d9a3fc217`, del cual la última parte será reemplazada por la dirección (address) de tu contrato.

![image-20221002071148343](https://user-images.githubusercontent.com/3300958/193496991-3ff9fb42-5b9b-4442-8e88-30999e588e1e.png)

2. Hacer click en la pestaña `Contract` que te permitirá ver el bytecode generado del Smart Contract. Para verificar, hacer clic en `Verify and Publish`.

![image-20221002072149755](https://user-images.githubusercontent.com/3300958/193496987-b6646c29-213c-470d-a925-2fe2a33a7a07.png)

3. Se abrirá una lista de opciones que tienen que ser llenadas de la siguiente manera: address del smart contract, Single File, versión del compilador (debe ser la misma usada en Remix), MIT de licencia.

![image-20221002072916426](https://user-images.githubusercontent.com/3300958/193496585-8fbdb073-48b2-407c-8308-45be845286d1.png)

4. En esta ventana copias y pegas el código de Remix. Verificas el CAPTCHA. Luego clic en `Verify and Publish`.

![image-20221002074129280](https://user-images.githubusercontent.com/3300958/193496578-46b72f49-0855-4915-acfb-67d2c78d3832.png)

4. Si todos los valores fueron incluidos correctamente, se verá el siguiente resultado:

![image-20221002073334433](https://user-images.githubusercontent.com/3300958/193496583-67848f32-7e90-48a2-b7dc-b727020e191a.png)

6. Al dirigirte a tu contrato en Goerli.etherscan.io con el siguiente link `https://goerli.etherscan.io/address/0xc5bccf767704432a3a22318a0df3067d9a3fc217`, del cual la última parte será reemplazada por la dirección (address) de tu contrato, podrás (1) encontrar el código del Smart Contract, (2) interactuar con el contrato directamente (`Read Contract` y `Write Contract`) y (3) observar otros detalles del mismo.

![image-20221002073616250](https://user-images.githubusercontent.com/3300958/193496581-80b79e6a-78df-4718-9c28-fb779aaabf85.png)
