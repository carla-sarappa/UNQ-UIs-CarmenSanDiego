# UNQ-UIs-CarmenSanDiego

¿Dónde está Carmen Sandiego?
Hoy nos encontramos con un problema que muchos otros enfrentaron antes.

Queremos saber ¿Dónde está Carmen Sandiego?

Para los más jóvenes a los que nunca les hicieron la famosa pregunta los invitamos a leer un poco más en: http://es.wikipedia.org/wiki/Carmen_Sandiego

Para los perezosos les hacemos un resumen.

Carmen Sandiego es una reconocida (y peligrosa) criminal internacional que recorre el mundo robando importantes obras de arte.
El objetivo de todo agente internacional es atraparla y así terminar con la serie de fechorías.
Junto a ella operan un conjunto de malhechores (de menor peligrosidad) generando caos en el mundo.
En el juego el jugador es un detective que se dedica a atrapar a los delicuentes viajando por el mundo y resolviendo los misterios que se presentan.

Dominio del Problema

Principalmente están los Villanos, que son quienes cometen los delitos. 
Después de trabajar durante años en Acme se logró armar una gran base de antecedentes de estos criminales.
Por cada Villano se conoce:
nombre
sexo
señas particularidades
hobbies
Por ejemplo:
    Nombre: Carmen Sandiego
    Sexo: Femenino
    Señas particulares: Pelo rojo, maneja un convertible, posee un collar de rubies, su comida favorita son los tacos mexicanos
    Hobbies: Juega Tenis
A su vez se cuenta con un mapamundi que tiene la información importante de cada país:
Nombre del país
Características del país
Lugares de interés por los criminales
Países con los que tiene conexiones aéreas
Por ejemplo:
 
  Nombre: Argentina
  Características del país: Bandera celeste y blanca, Moneda Peso, Casa de gobierno rosada, conocida por los Gauchos,                               comida típica empanadas, beben mate
  Lugares de interés: Embajada, Biblioteca, Club
  Conexiones: Perú, España, Brasil, Australia, Estados Unidos

Los lugares de interés son bien conocidos por todos, en cada país hay 3 lugares que nos aseguran que si el villano estuvo en el país visitó todos.
Despues de muchas inverstigaciones se determinó que hay 4 tipos de lugares que atraen a los malechores:
Embajada: cuando tiene información del malechor da 2 pistas relacionadas con el destino del villano
Banco: cuando tiene información del malechor da una pista relacionada con el país de destino y otra con las señas particulares.
Biblioteca: cuando tiene información del malechor da una pista relacionada con el país de destino y otra con las señas particulares. Además el 50% de las veces da una pista más sobre los hobbies
Club: cuando tiene información del malechor da dos pistas sobre las señas particulares y el 70% de las veces agrega información de sus hobbies (adicional a las dos señas particulares).
En lugar hay un ocupante, que pude ser el Villano (si es su destino final), un informante (si el villano está en el país, nos da la información según la política del lugar) o un cuidador (si el villano no se encuentra en el país).
Los villanos si están en el país pero no en el lugar al que visitamos intentan matarnos y fallan.
Los cuidadores nos informan que nos hemos equivocado de país y mejor volvemos por donde vinimos.
El objetivo del juego siempre es resolver un caso. El caso tiene un responsable (villano que intentaremos capturar), un plan de escape (que es una lista de países conectados), un reporte del acto criminal, el objeto del robo, el país donde ocurrió el robo.

Un ejemplo de un caso:
 
  Responsable: Carmen Sandiego
  Plan de escape: Inglaterra - Rusia - Chile - Australia - Guatemala - Bosnia - Japón - Italia
  Reporte: A las 9 de la mañana en la ciudad del Cairo la comunidad científica fue conmovida al darse cuenta del                    faltante de gran valor! El sarcófago del faraón Usermaatra-Meriamón Ramsés-Heqaiunu, mejor conocido como Ramsés              III. El criminal fue muy prolijo y la escena del crimen no contaba con pista alguna, su misión como detective            es desifrar el responsable de tal crímen y apresarlo.
  Objeto: tumba del faraón
  País donde ocurrió: Egipto

El juego consiste en interpretar al detective que viaja por el mundo atrapando a los malechores.

Cuando el detective inicia el caso viaja al lugar de los hechos, en ese país puede recorrer los lugares de interés del país buscando pistas sobre el responsable o el próximo destino del criminal, una vez que se siente listo realiza un viaje a alguno de los países con los que tiene conexiones aéreas su país actual, una vez que llega al lugar puede visitar lugares (como lo hizo en el primer país).

En todo momento el detective puede pedir una orden de arresto contra el criminal que cree que ha perpetrado el acto delictivo.
Cuando se llega al último país y se visita los lugares en alguno se captura al delicuente.

El detective gana el caso cuando atrapa al villano que esperaba (para el que tiene su orden de arresto).
Cuando el detective se equivoca, debe volver sobre sus pasos (es decir regresar a su país anterior) para retomar su búsqueda.
TP 1 - Arena

¿Cómo se entrega el tp?
 = 2 Proyectos creados y comiteados =
 - proyecto de dominio
 - con tests! como todo lo que hacemos, ya sabemos que no es necesario aclarar pero a veces somos repetitivos ;)
 - el proyecto de uis con Arena como dependecia

Guía para corregir:
 - ¿hay tests?
 - particularmente para la parte de llegar a un pais (si está el villano o no en el país y quien está en cada lugar, tambien qué información da cada ocupante)
 - ¿El modelo habla del dominio?
 - La pantallas de creación/edición ¿cómo están modeladas? ¿repiten código?
 - Si hay mas de uno:
 - ¿que cambia en cada una?
 - ¿como cambia el título segun creación o edición?
 - Si hay una clase sola:
 - estan en la misma jerarquia?
 - estan compuestas?
 - ¿como cambia el título segun creación o edición?
Menú de acciones


Resolver Misterio: Inicia un juego
Mapamundi: Permite administrar los países del juego
Expedientes: Permite administrar la información de los villanos
Mapamundi


Nuevo País


Recuerden que:
Los lugares deben ser exactamente 3 y no pueden estar repetidos
Las conexiones deben ser a países que se hayan ingresado al sistema previamente
Es obligatorio indicar el nombre del país
Editar País


Expedientes

Hay dos versiones de los expedientes, una es la vista que se abre desde el menú de acciones:

La otra es la vista que se abre desde la vista de Resolver Misterio:

Nuevo Villano


Editar Villano


Editar Señas Particulares


Editar Hobbies


Inicio de juego


Cuando aceptamos el caso vamos a Resolver Misterio
Resolver Misterio


Orden de arresto: abre la pantalla de "Orden de Arresto"
Viajar: abre la pantalla de viajar a países con conexión del país actual
Expendientes: abre la pantalla de Expendientes como sólo consulta
Cualquiera de los lugares muestran la información que brinda el ocupante del lugar
El recorrido criminal es la lista de países que visitamos por los que pasó el villano
Los destinos fallidos son los países a los que viajamos por error en algun momento del juego
Orden de arresto


Viajar


Lugares

Cuando se visita un lugar nos da distinta información según el ocupante:
Si el criminal está en el país en fuga (tiene mas destinos en su plan de escape), nos dan información según el lugar
Si el criminal no está en el país (porque nos equivocamos), nos informan que no hay nadie con las caraterísticas que solicitamos
Si el criminal está en el país como último destino, nos informan que estamos en peligro y tengamos cuidado
Si el criminal se encuentra en el lugar: Se da el grito de ALTO!! ordenando detener a la persona para lo cual tenemos Orden de Arresto

Fin del Juego

El juego termina cuando llegamos al lugar que tiene al delicuente (luego de haber dado la orden de alto).
Cuando esto pasa al continuar nos informan los resultados, que pueden ser buenas o malas noticias:
