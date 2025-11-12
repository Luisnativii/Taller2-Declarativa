# Taller 2 - Programación Declarativa

## Estudiante:
**Nombre**: Luis Nativi  
**Carné**: 00200022  
**Materia**: Programación Declarativa

## Descripción:
Este repositorio contiene las soluciones a los ejercicios del **Taller 2** de la materia **Programación Declarativa**. El taller tiene como objetivo aplicar conceptos fundamentales de la programación funcional utilizando el lenguaje **Racket**. Los ejercicios abordan conceptos clave como el uso de **funciones de orden superior**, **recursión**, **operaciones sobre listas** y **funciones de acumulación**.

## Ejercicios Trabajados:

### Ejercicio 1 – Contar elementos positivos en una lista
Se utilizó **`filter`** y **`length`** para contar cuántos elementos de una lista son mayores que cero.

### Ejercicio 2 – Generar lista de cuadrados de números pares
En este ejercicio, se usaron **`filter`** para seleccionar números pares y **`map`** para elevar esos números al cuadrado.

### Ejercicio 3 – Calcular el factorial de un número
Se implementó una solución recursiva para calcular el factorial de un número.

### Ejercicio 4 – Elevar cada número al cubo
Se utilizó **`map`** y una función **`lambda`** para elevar al cubo cada número en una lista.

### Ejercicio 5 – Sumar todos los elementos impares
Este ejercicio combinó **`filter`** y **`foldl`** para filtrar los números impares y luego sumar sus valores.

### Ejercicio 6 – Determinar si una lista contiene números negativos
Se usó **`ormap`** junto con una **`lambda`** para verificar si algún número en la lista es negativo.

### Ejercicio 7 – Calcular la suma acumulada de una lista
Con **`foldl`**, se acumuló la suma de los números en la lista, generando una lista con las sumas acumuladas en cada paso.

### Ejercicio 8 – Concatenar cadenas de texto en una lista
Se usó **`foldl`** con **`string-append`** para concatenar las cadenas de texto en la lista.

### Ejercicio 9 – Generar lista con el doble de los números mayores que 5
En este ejercicio, se usaron **`filter`** para filtrar los números mayores que 5 y **`map`** para duplicarlos.

### Ejercicio 10 – Invertir el orden de una lista
Se implementó una solución utilizando **`foldl`** para invertir el orden de los elementos de la lista.

### Ejercicio 11 – Crear una función que reciba una función como parámetro
Se creó una función de orden superior que recibe otra función como parámetro y aplica esta función a cada elemento de la lista.

### Ejercicio 12 – Reto integrador: combinar múltiples funciones
Se combinaron **`map`**, **`filter`** y **`foldl`** para filtrar los números mayores que 5 en la lista y calcular su promedio.

## Enfoque:
A lo largo de este taller, se ha trabajado intensamente con los siguientes conceptos clave de la programación declarativa:
- **Funciones de orden superior**: Funciones que reciben otras funciones como parámetros, como se vio en los ejercicios 11 y 12.
- **Recursión**: Se implementaron soluciones recursivas como el cálculo del factorial.
- **Operaciones sobre listas**: Se trabajó con funciones como **`map`**, **`filter`**, **`foldl`** para manipular listas de manera declarativa.
- **Composición de funciones**: En el ejercicio 12, se combinó varias funciones como **`map`**, **`filter`** y **`foldl`** para realizar un cálculo compuesto.

## Herramientas Utilizadas:
- **Lenguaje**: Racket
- **Entorno de Desarrollo**: DrRacket
- **Conceptos**: Programación funcional y declarativa, funciones de orden superior, recursión.

## Conclusión:
El taller permitió consolidar el entendimiento de la programación funcional utilizando Racket, al aplicar funciones de orden superior, manipulación de listas y recursión para resolver problemas diversos. La práctica constante con estas herramientas y enfoques es fundamental para desarrollar habilidades en programación declarativa.

