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

**_Creación del Primer Token (wizard)_**

 En este primer ejercicio crearemos un token usando el wizard de Open Zeppelin y sus librerías. Es la manera más suscinta de crear una criptomoneda. Necesitamos las siguientes herramientas

1. [Wizard](https://docs.openzeppelin.com/contracts/4.x/wizard)
2. [Remix IDE](https://remix.ethereum.org/)
3. [Librerías Open Zeppelin](https://docs.openzeppelin.com/contracts/4.x/)
4. [Mumbai Scan](https://mumbai.polygonscan.com/)

**_Desarrollo del ejercicio_**

1. Crear el token en el Wizard
2. Publicarlo usando Remix
3. Cada persona creará su propio token
4. Conocerá todos los métodos disponibles de su dinero programable
5. Cada participante enviará tokens a su compañero
6. Métodos a explorar:
   1. name
   2. symbol
   3. decimals
   4. totalSupply
   5. mint
   5. burn
   6. approve
   7. transferFrom
   8. 
7. Se agregará el token a Metamask
8. Cada persona describirá el método que está utilizando para luego poder armarlo con código

**Conceptos para armar tu propio token**

- definición de variables
- definición de métodos
- mapping
- require
- eventos
- constructor
- msg.sender
- herencia

**_Hash table en contratos inteligentes_**

La estructura de datos llamado mapping es uno de los más usados en Solidity. `mapping(_KeyType => _ValueType)` Es el equivalente a un Hash Table o un objeto (`var obj = {}`) en Javascript. A cada `key` le corresopnde un `value` dentro del mapping.

![image-20221002122245338](https://user-images.githubusercontent.com/3300958/193496570-606c0ff9-4e69-4fe0-92af-24c07e9de6c0.png)

`_KeyType` no puede ser otro mapping, struct o array. `_ValueType` puede ser de cualquier tipo, incluyendo mapping, arrays y structs.

Un `mapping` empieza con una inicialización de todos los posibles valores de `_KeyType` que están mapeados a un valor por defecto que es 0. Además, con `mapping` no se lleva la cuenta de los keys cuyos valores sea 0. Ello justamente impide que no se pueda borrar un `mapping` a menos que se sepa el `key`.

Los `mapping`s solo pueden tener un tipo de ubicación de información: `storage`. No se pueden usar `mapping`s como parámetros de una función o como el valor de retorno.

Un `mapping` no tiene longitud (`length`), como lo puede tener un array. Un `mapping` tampoco es iterable porque no hay manera de conocer sus `key`s mediante ningún método. Se puede guardar las llaves del `mapping` en otro array para poder iterar luego.

En el siguiente ejemplo se incluye un `mapping` para guardar una lista de saludos en el cual el `_KeyType` se va incrementando en uno a medida que la función `set` es llamada.

3_Mapping

```solidity
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
```


**_Propagación de un Error vía `require` o `revert`_**

`require` o `revert` en Solidity es usado para validar ciertas condiciones dentro del código y lanzar una excepción si dicha condición no es cumplida. Esto es importante para prevenir la finalización de una transacción si se detecta una condición indeseada.

Cabe mencionar que esta propagación del error será notada por el usuario en el front-end (dApp) antes de firmar una transacción mediante su billetera (de Metamask u otra).

Veamos cómo aplicamos `require` o `revert` en el código:

4_ErroRevert.sol

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract RevertRequyire {
    // mapping address a edad
    mapping(address => uint256) public edadPorAddress;

    function setEdadPorAddress(address _account, uint256 _edad) public {
        edadPorAddress[_account] = _edad;
    }

    function setEdadPorAddressManejaError(address _account, uint256 _edad)
        public
    {
        require(_edad >= 30, "Edad menor a 30");
        edadPorAddress[_account] = _edad;
    }

    function setEdadPorAddressManejaError2(address _account, uint256 _edad)
        public
    {
        if (_edad <= 29) {
            revert("Edad menor a 30");
        }

        edadPorAddress[_account] = _edad;
    }
}
```
`revert` y `require` propagarán el error si es que no cumple las condiciones allí definidas. La única diferencia entre uno y otro es que `require` lleva el condicional y el mensaje de error como argumentos de un método. En cambio, `revert` ofrece mayor flexibilidad para validar y plantear las condiciones a cumplir. `revert` solo lleva como argumento el mensaje del error.

**_Usando eventos a modo de notificación_**

`Events` dentro de Solidity son disparados cuando algún metodo en particular es ejecutado. Los eventos pueden llevar información adicional para explicar lo que esá sucediendo. Normalmente, el nombre del evento seguido de la información que contiene, explica muy bien un suceso dentro del blockchain.

Los eventos disparados desde un Smart Contract son prograpagos en el Blockchain. Dichos eventos quedan registrados por siempre. En un futuro se pueden hacer queries de eventos disparados anteriormente. Incluso se puede usar para almacenar información de manera económica. Estos eventos pueden ser captados desde el front-end en un dApp si se establece una conexión.

5_Events.sol

```solidity
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
```

Ejemplos de eventos propagados en la red [link](https://polygonscan.com/address/0x54FC36444355602Fb110842411D3b0E6C4F1Cfd6#events).

![image-20221005063541888](https://user-images.githubusercontent.com/112733805/194439372-2e95a90d-1d59-4c92-8e45-9f7746906317.png)

**_msg.sender_**

Es la cuenta (address) que llama o ha ejecutado una función (de smart contract) o ha creado una transacción.

Esta cuenta (address) puede ser una dirección de un contrato (CA) o una persona como nosotros (EOA).

`msg.sender` funciona como una variable global dentro de Solidity y puede ser usada dentro de los métodos del Smart Contract como una variable ya definida.

Otras variables globales en Solidity [link](https://docs.soliditylang.org/en/v0.8.9/cheatsheet.html?highlight=global%20variables#global-variables).

5_5_MsgSender.sol

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;

contract MiPrimerContrato {
    // ...
    address caller;
    function setCaller() public returns(address) {
        caller = msg.sender;
        return msg.sender;
    }
}
```

**_Constructors_**

Los constructores son un concepto muy conocido en Programación Orientada a Objetos. En muchos lenguajes, cuando se definen clases, también se puede definir un mágico método que solamente se ejecutará una sola vez en el momento en que una nueva instancia del objecto es creada.

En el caso de Solidity, el código definido dentro del constructor, solo se ejecutará una sola vez cuando el contrato es creado y publicado en la red.

Es una función opcional declarada. Cuando no hay constructor, el contrato asumirá un constructor por defecto que es `constructor() {}`.

Es importante mencionar que el `bytecode` publicado en la red, no contiene el código del `constructor`, dado que el constructor corre solo una vez al ser publicado.

<u>¿Cómo se define un constructor en Solidity?</u>

Se utiliza la palabra clave `constructor()`. No hay necesidad de añadir la palabra clave `function` dado que el constructor es una función especial.

```solidity
contract Constructor {
		constructor() {
				// código que será ejecutado una sola vez
				// cuando se cree el contrato
		}
}
```

<u>Inicializar el Smart Contract con valores externos</u>

El constructor es muy útil para pasar valores de inicialización al Smart Contract. Nada impide que estos valores sean escritos en el futuro. Sin embargo, ello implicaría definir métodos adicionales de `set`.

```solidity
contract Constructor {
		string saludo;
		constructor(string memory _saludo) {
			saludo = _saludo;
		}
}
```

<u>¿Cómo saber quién publicó el smart contract?</u>

Ya sabemos que `msg.sender` es una variable global en solidity que nos permite saber quién ha llamado un método en particular. Cuando usamos `msg.sender` dentro de un `constructor` en solidity, podemos saber la cuenta (address) que hizo la publicación del contrato. Veámoslo:

8_Constructor.sol

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Constructor {
    address public publicador;

    // position => saludo
    mapping(uint256 => string) listaSaludos;

    // mapping address a edad
    mapping(address => uint256) public edadPorAddress;

    constructor(uint256 _position, string memory _saludo) {
        publicador = msg.sender;

        listaSaludos[_position] = _saludo;
        edadPorAddress[msg.sender] = 33;
    }

    function quienEsPublicador() public view returns (address) {
        return publicador;
    }
}
```

Al publicar este contrato, la variable `publicador` obtendrá como valor el address de la persona que lo publicó. Además de ello, todas las inicializaciones dentro del `constructor`, serán ejecutadas una sola vez.

**Construcción del token sin librerías**

```solidity
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
```

**_Herencia en Contratos_**

En Solidity, se puede decir que los contratos se comportan como las clases en cualquier otro lenguaje de Programación Orientada a los Objetos. Es decir, contratos pueden heredar y también pueden ser heredados. De este modo podemos construir patrones de diseño complejos.

<u>¿Cómo se hereda en Solidity?</u>

Se utiliza una palabra clave llamada `is` seguido del contrato. Veámoslo:

```solidity
contract A {} // base contract
contract B is A {} // derived contract
```

Un contrato también puede heredar de múltiples contratos:

```solidity
contract A {} // base contract
contract B {} // base contract
contract C is A, B {} // derived contract
```

Cuando un contrato hereda otros contratos, en realidad solo un único contrato es creado en el blockchain. El código de los contratos base (`A` en el primer ejemplo; `A` y `B` en el segundo ejemplo) es en realidad compilado en el único contrato publicado (`B` en el primero ejemplo; `C` en el segundo ejemplo).

Para poder exponer un método de un contrato base a otro contrato derivado, de manera tal que no sea usada externamente, dicho método debe definirse como interno (`internal`).

<u>Orden para heredar</u>

Solidity guía la herencia de contratos usando el algoritmo de linearización C3 ([c3 linearization](https://en.wikipedia.org/wiki/C3_linearization)). Con éste, se posibilita la herencia múltiples propiedades y métodos de modo tal que no hacen conflicto.

En Solidity, se tienen que listar los contratos desde el contrato más base a la izquierda hasta el más derivado hacia la derecha.

```solidity
contract Humano{}
contract Hombre is Humano{}

// contract Marcos is Hombre, Humano{} // INCORRECT
contract Marcos is Humano, Hombre {}
```
<u>La palabra clave `super`</u>

`super` es usado en herencia de contratos cuando se desea llamar un método definido en un nivel arriba en la jerarquía de herencia. `super.[method]` encontrará el método más cerca del smart contract que lo esté llamando.

```solidity
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
```

# Parte 2

## Desarrollando una colección de NFTs

 En esta sección vamos a desarrollar una colección de NFTs. Usaremos el siguiente stack:

1. Interplanetary File System (IPFS)
2. ERC721 standard
3. Librería de generación imágenes (npm library)



**Realizar presentación  de NFTs**

Conferencia Activos digitales [aquí](https://www.canva.com/design/DAFQWmz4oxU/MKUJRFwEzgL2Z__UIZnNfg/edit)



**Cada persona debe hacer mint de un NFT e Interactuar con el contrato**

Interactuar con contrato NFTs Cuy Moche [aquí](https://mumbai.polygonscan.com/address/0x42C79A959159609A8d159756ce4ebd35f4f518aA#code)

#### IPFS

> La misión de IPFS es crear una red resiliente, mejorable y abierta para preservar e incrementar el conocimiento de la humanidad.

 IPFS desea hacer de la web Peer to Peer (P2P) en vez de tener el tradicional modelo de cliente y servidor. IPFS interconetará nodos de manera resiliente.

 Está basado en al direccionamiento basado en el contenido.

 IPFS plantea solucionar varios problemas actuales: censura, links rotos (no se basa en un servidor en el contenido que puede esta distribuido en varios nodos), plantea un modelo de seguridad (asegura que el recurso que estás solicitando sea realmente el que estás pidiendo a través del hash del mismo recurso).

Casos de uso: guardar recurso estáticos. páginas web. archivar data. construir Dapps. bases de datos científicas. publicaciones científicas.

 El internet como lo conocemos tiene un problema que reside en la centralización. La información está guardada en granjas de servidores que son controlados por una empresa individual. La centralización trae otro problema que es la censura. El gobierno puede bloquear el accesso a ciertos recursos si es que lo deseara, por ejemplo aquella vez que impidió el acceso a Wikipedia por llamarlo una amenaza nacional.

 La razón por la cual aún se sigue usando este model es porque la centralización de servidores permite a las empresas tener control sobre la rapidez en que el contenido puede ser entregado.

 El objetivo de IPFS es hacer de la web completamente distribuida en una similar manera en que BitTorrent funciona.

¿Cómo se accede a la información actualmente en el internet?

 Cuando deseas descargar un archivo, tu le dices al navegador exactamente dónde de dónde descargarlo. Por ejemplo se utiliza el siguiente link `htps://webiste.com/archivo.jpg`. Es decir, la ubicación del archivo será el IP address o el nombre del dominio. A esto se le llama Direccionamiento basado en la ubicación (location-based addressing). En el caso en que el servidor de ese archivo esté caído, no habría la posibilidad de obtener dicho archivo, incluso aunque otra persona lo hubiera obtenido.

 Para solucionar ese problema, IPFS propone el Direccionamiento basdo en el contenido (content-based addressing) y ya no en la ubicación. En vez de decirle al navegador dónde conseguir el recurso, ahora se le dirá qué es lo que se quiere conseguir. Para lograr ello, es necesario que cada recurso posea un hash único, que es como su huella digital. Entonces, cuando deseas descargar cierto archivo, se preguntará a la red quién tiene el archivo con dicho hash.

 ¿Y cómo podrías saber que la persona que te envía el recurso no lo ha alterado? Al recibir el recurso, puedes aplicar un método hash en el recurso y comparar el resultado con el hash inicialmente usado para solicitar dicho recurso.

 Cuando múltiples personas publican el mismo recurso en la red, este recurso se crea una sola vez y se evita la duplicación, lo cual hace la red más eficiente.

¿Cómo IPFS almancena recursos y lo hace accesible para otras personas?

 IPFS utiliza "objetos de IPFS" y puede almacenar hasta 256 kb de información. Dentro de este objeto se puede inlcuir links a otros objetos de IPFS. En el caso en que se almacene un recurso que es mucho mayor al límite de 256 kb, el recurso se dividirá en múltiples objetos de IPFS de 256 kb cada uno. Seguido a ello, el sistema creará un objeto IPFS vacío que se encargará de juntar los links a todos los objetos de IPFS creados.

 Dado que IPFS utiliza el direccionamiento basado en el contenido (content-based addressing), una vez que un recurso es añadido a IPFS, ya no puede ser cambiado. IPFS es una base de datos inmutable, parecida a un blockchain.

 El más grande problema que tiene IPFS es el de mantener los archivos disponibles. Todos los nodos de la red guarda un caché de los archivos que ha descargado. También ayudan a compartir el recurso si es solicitado desde otro lugar. El problema surge cuando los nodos que tienen ciertos recursos en memoria se desconectan y nadie más puede obtener dichos recursos. Es como tener BitTorrent sin clientes que surtan un recurso que se está descargando.

 ¿Cómo podemos solucionarlo? Podemos incentivar a las personas a mantener activo sus nodos para guardar recursos, de modo tal que estén disponibles. O también podemos preventivamente distribuir los recursos en varios nodos de modo tal que siempre hay copias disponibles. Eso es exactamente lo que Filecoin intenta hacer.

 Filecoin ha sido creado por el mismo grupo de gente que creó IPFS. Filecoin es un blockchain creade encima de IPFS que busca ser un mercado decentralizado para guardar información. Es decir, si dispones de un espacio de memori disponible, lo pudes rentar y hacer dinero. De ese modo, Filecoin incentiva a los nodos a mantenerse conectados tan largo como sea posible para poder obtener las recompensas. Del mismo modo, el sistema se preocupa que los recursos se dupliquen en varios nodos.

 ¿Cómo se puede usar IPFS? En el año 2017, el gobierno de Turquía decidió prohibir el acceso a Wikipedia. La respuesta frente a ello, es que se puso una copia de Wikipedia en IPFS. Dado que IPFS es distribuido y no hay servidores centrales, el gobierno no puede bloquearlo.

¿Por qué es llamado interplanetario? Pues en cada planeta, una vez que algn recurso ya se ha solicitado por primera vez, estará cacheado en memoria para ser obtenido dentro del mismo planeta y no habría la necesidad de viajar hasta otro planeta para obtener dicho recurso.

**Instalación de IPFS**

 Dirígete a `https://ipfs.tech/#install` e instala la versión desktop de IPFS.

![image-20221024220019114](https://user-images.githubusercontent.com/3300958/198416349-1b953f59-d7d1-4079-ad4b-b5fd529346d3.png)

 En la sección de `FILES` es donde guardaremos la información para la colección de NFTs.

![image-20221024234359006](https://user-images.githubusercontent.com/3300958/198416354-4a6f4cfb-f31f-4a12-b893-2ab8b0dd9d7b.png)

**ERC721 Standard**

 El ERC721 es un tipo de estándar o formato que los desarrolladores acuerdan seguir. No es obligatorio pero ayuda a crear compatibilidad con una serie de aplicaciones descentralizadas. En Ethereum, el estándar ERC721 se usa para crear NFTs.

 ¿Qué es un NFT? NFT significa un Token No Fungible. Fungible significa intercambiable o reemplazable. Por ejemplo, un bitcoin es fungible ya que al ser intercambiado por exactamente otro bitcoin, su valor no ha cambiado. En cambio, los NFT son completamente únicos y no existe equivalencia de uno a uno con otro NFT.

 Con el estándar ERC721, cada token del smart contract puede tener un valor diferente a raíz de su antiguedad, rareza o incluso por como luce visualmente. Cada NFT tiene un token id y un método especial que al introducir dicho token id, devuelve un elemento visual que representa al NFT.

 Este tipo de token es perfecto para ser usado en plataformas que ofrecen colleccionables, accesos privados, tickets de lotería, sitios enumerados para conciertos, etc.

 Uno de los proyectos más tempranos y conocidos hasta el momento es [CryptoKitties](https://www.cryptokitties.co/) que usa internamente el estándar ERC721.

![image-20221025000418134](https://user-images.githubusercontent.com/3300958/198416356-db586c2c-dea7-48d4-9500-151dad5348e7.png)

 Se puede observar cómo es que uno de los smart contracts de Crypto Kitties hereda el contrato ERC721 en la siguiente ilustración:

![image-20221025000555282](https://user-images.githubusercontent.com/3300958/198416360-bacf870f-6dc0-420c-91ba-be1288b9241e.png)

 Bajo el estándar ERC721, se pueden crear tokens que son únicos. Con este modelo se ha difundido la idea de tener activos únicos en Ethereum.

 El día de hoy, el uso más común para el ERC721 es arte digital. Las personas compran estos NFTs por una variedad de razones. Algunos quieren apoyar al artista, otros buscan una inversión de largo plazo con la esperanza de que el precio subirá. O quizás simplemente les gusta el arte que representa dicho NFT.

 Sin embargo, los casos de uso de los NFT se extiende más allá del arte. Los NFTs también puede ser usados en juegos que son basados en el blockchain. Estos NFTs representan activos únicos dentro del juego. Ejemplo de ello es `Gods Unchained`. En ese juego puedes collecionar cartas que se pueden tranzar en un mercado de segunda mano.

![image-20221025230458247](https://user-images.githubusercontent.com/3300958/198416363-67e92062-fec4-42fb-8b8e-a6009b5e9ac5.png)

 Los NFTs en la música también se han adaptado. Aplicaciones como Audius permite a los artistas acuñar su trabajo como si fueran tokens ERC721.

10_MyFirstNFTNoLib.sol

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract MyFirstNFTNoLib is IERC721 {
    /**
    name
    symbol
    safeMint
    balanceOf
    ownerOf

    approve - por token
    getApproved - lectura
    setApprovalForAll - por toda la coleccion
    isApprovedForAll - lectura

    transferFrom
    safeTransferFrom
    safeTransferFrom
    tokenUri

    supportsInterface
    */

    // 1. Para guardar a los dueños de cada NFT
    // sabremos quien es el duenio de cada token id
    // apuntamos del token id al address
    mapping(uint256 => address) duenios;

    // 2. queremos saber cuantos tokens tiene cada duenio
    mapping(address => uint256) balances;

    // 7. dar permiso para un token
    mapping(uint256 => address) permisosUnToken;

    // 8. un duenio le da permiso a otra cuenta par manejar todos sus tokens
    // duenio token => maneja => true/false
    mapping(address => mapping(address => bool)) permisosTodosTokens;

    // 3. empieza en cero y seguira incrementando
    uint256 counter;

    function name() public view returns (string memory) {
        return "";
    }

    /**
     * @dev See {IERC721Metadata-symbol}.
     */
    function symbol() public view returns (string memory) {
        return "";
    }

    // 4. podemos crear la function mint
    function safeMint(address to) public {
        duenios[counter] = to;
        balances[to] += 1;

        counter += 1;
    }

    // 5. averiguar cuantos nfts tiene una cuenta
    function balanceOf(address owner) public view returns (uint256) {
        return balances[owner];
    }

    // 6. averiguar quien es el duenio de un token
    function ownerOf(uint256 tokenId) public view returns (address) {
        return duenios[tokenId];
    }

    // 9. dar permiso para un token a una address
    function approve(address to, uint256 tokenId) public {
        require(ownerOf(tokenId) == msg.sender, "No es el duenio del token");
        permisosUnToken[tokenId] = to;
    }

    // 10. devuelve quien tiene el permiso para manejar un token ID
    function getApproved(uint256 tokenId) public view returns (address) {
        return permisosUnToken[tokenId];
    }

    // 11.
    function setApprovalForAll(address operator, bool approved) public {
        permisosTodosTokens[msg.sender][operator] = approved;
    }

    // 12.
    function isApprovedForAll(address owner, address operator)
        public
        view
        returns (bool)
    {
        return permisosTodosTokens[owner][operator];
    }

    // 13
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public {
        require(ownerOf(tokenId) == from, "No es el duenio");

        duenios[tokenId] = to;

        balances[from] -= 1;
        balances[to] += 1;
    }

    // 15
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public {
        safeTransferFrom(from, to, tokenId, "");
    }

    // 14
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) public {
        transferFrom(from, to, tokenId);
        // validate _checkOnERC721Received
    }

    // 16
    function supportsInterface(bytes4 interfaceId) public pure returns (bool) {
        return interfaceId == type(IERC721).interfaceId;
    }
}
```

