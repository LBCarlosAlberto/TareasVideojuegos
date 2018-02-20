---
title: Tarea 2 - Algoritmo de Dijkstra.
author: Lopez Benitez Carlos Alberto
- name: Lopez Benitez Carlos Alberto
  affiliation: Lic. Informática. Facultad de Contaduría y Administración, UNAM
  email: carlos.alberto.b8@comunidad.unam.mx
date:
abstract: Contenido acerca del Algoritmo de Dijkstra, que es?, como funciona?, en que se emplea?, y mas. 
csl: estilos/apa.csl
...

# Introducción.
*Edsger Dijkstra es uno de los padres de la informática. Éste físico teórico realizó contribuciones fundamentales al campo de la informática actual están los semáforos, el algoritmo del banquero o la notación polaca inversa.
Fue en 1956, Dijkstra anunció su algoritmo, algoritmo de caminos mínimos, y desde entonces es utilizado bajo su apellido, “el algoritmo de dijkstra”.

También llamado algoritmo de caminos mínimos, es un algoritmo para la determinación del camino más corto dado un vértice origen al resto de vértices en un grafo con pesos en cada arista. Su nombre se refiere a Edsger Dijkstra, quien lo describió por primera vez en 1959.

# Aplicaciones.
En múltiples aplicaciones donde se aplican los grafos, es necesario conocer el camino de menor costo entre dos vértices dados:

+ Distribución de productos a una red de establecimientos comerciales.
+ Distribución de correos postales.
+ Sea G = (V, A) un grafo dirigido ponderado.

# Características del algoritmo.
+ Es un algoritmo greddy.
+ Trabaja por etapas, y toma en cada etapa la mejor solución sin considerar consecuencias futuras.
+ El óptimo encontrado en una etapa puede modificarse posteriormente si surge una solución mejor.

## Como trabaja.

Primero marcamos todos los vértices como no utilizados. El algoritmo parte de un vértice origen que será ingresado, a partir de ese vértices evaluaremos sus adyacentes, como dijkstra usa una técnica greedy – La técnica greedy utiliza el principio de que para que un camino sea óptimo, todos los caminos que contiene también deben ser óptimos- entre todos los vértices adyacentes, buscamos el que esté más cerca de nuestro punto origen, lo tomamos como punto intermedio y vemos si podemos llegar más rápido a través de este vértice a los demás. Después escogemos al siguiente más cercano (con las distancias ya actualizadas) y repetimos el proceso. Esto lo hacemos hasta que el vértice no utilizado más cercano sea nuestro destino. Al proceso de actualizar las distancias tomando como punto intermedio al nuevo vértice se le conoce como relajación (relaxation).
Tanto java como C++ cuentan con una cola de prioridad ambos implementan un Binary Heap aunque con un Fibonacci Heap la complejidad de dijkstra se reduce haciéndolo más eficiente, pero en un concurso más vale usar la librería que intentar programar una nueva estructura como un Fibonacci Heap, claro que particularmente uno puede investigar y programarlo para saber como funciona internamente.

# Movimientos controlados por la IA algoritmo de dijkstra.

Hemos conseguido que en los videojuegos se cree un movimiento programado, pero, todos sabemos que en la vida real, por muchas razones los movimientos de los objetos no siempre son los mismos, hay eventos que lo modifican. Es por eso, que existe una necesidad de que el movimiento pueda cambiar en tiempo de ejecución del juego y esto lo conseguimos implementando una Inteligencia Artificial en los objetos que creamos, para que decida, en tiempo de ejecución, que movimiento hacer. Como ya hemos comentando anteriormente, lo que hará la IA será a nivel lógico más básico cambiar el objeto de coordenadas, no obstante estos cambios vienen definidos por el camino que tiene que seguir ese personaje que se calcula en base de algún algoritmo. Uno de los primeros tipos de videojuegos en implementar una IA, es el tan famosos “PAC-MAN”. En este juego tienes unos “fantasmitas” que te van persiguiendo por toda la pantalla. El algoritmo usado en este juego es una implementación del algoritmo de Dijkstra, que sirve para calcular el camino más corto (con el mínimo coste) entre los “fantasmitas” y pacman. “PAC-MAN” consta de cuatro fantasmitas y cada uno de esos tiene una variación de la implementación de este algoritmo. Además uno de los puntos más notables e interesantes que tiene el juego, es que estos algoritmos cambian dependiendo del estado de los fantasmitas, por ejemplo, normalmente los fantasmitas van hacia donde se encuentra pacman, pero cuando pacman come cierta fruta, los fantasmas cambian de estado (es cuando se vuelven azules) y cambian su algoritmo, para alejarse de él. A continuación vamos a ver que es el algoritmo de Dijkstra y cómo funcionaria en este juego. El algoritmo de Dijkstra se encarga de calcular el camino mínimo entre dos puntos, que forman parte de un grafo, que representa el mapa de un videojuego.

# Fuentes

** + ** David Javier Morán Márquez y Francisco Javier Romero Paris.. (2013). FUNCIONES QUE GANAN PARTIDAS. 20/02/18, de Universidad de Alcalá Sitio web: (http://www3.uah.es/libretics/concurso2013/files2013/Trabajos/Funciones%20que%20ganan%20partidas.pdf)

** + ** Comunidad EcuRed. (2016). Algoritmo de Dijkstra. 20/02/18, de EcuRed Sitio web: (https://www.ecured.cu/Algoritmo_de_Dijkstra)

** + ** Jhosimar George Arias Figueroa. (2012). CAMINO MAS CORTO: ALGORITMO DE DIJKSTRA. 20/02/18, de Algorithms and More Sitio web: (https://jariasf.wordpress.com/2012/03/19/camino-mas-corto-algoritmo-de-dijkstra/)

