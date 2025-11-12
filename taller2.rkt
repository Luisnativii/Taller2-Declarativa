#lang racket

;; Ejercicio 1 – Contar elementos positivos en una lista
;; Objetivo: Usar filter y length para determinar cuántos elementos positivos contiene una lista.

(define (contar-positivos lista)
  ;; Filtrar los números positivos (mayores que 0)
  (define positivos (filter (lambda (x) (> x 0)) lista))
  
  ;; Contar cuántos elementos hay en la lista de números positivos
  (length positivos))

;; Ejemplo de uso:
(displayln (contar-positivos '(3 -2 7 0 -5 9)))  ;; Debería retornar 3



;; Ejercicio 2 – Generar lista de cuadrados de números pares
;; Objetivo: Practicar map y filter aplicados secuencialmente.

(define (cuadrados-pares lista)
  ;; Filtrar los números pares
  (define pares (filter even? lista))
  
  ;; Elevar al cuadrado cada número par
  (map (lambda (x) (* x x)) pares))

;; Ejemplo de uso:
(displayln (cuadrados-pares '(1 2 3 4 5 6 7 8)))  ;; Debería retornar '(4 16 36 64)




;; Ejercicio 3 – Calcular el factorial de un número
;; Objetivo: Implementar recursión simple en Racket.

(define (factorial n)
  (if (= n 0)               ;; Caso base: si n es 0, retornamos 1
      1
      (* n (factorial (- n 1)))))  ;; Caso recursivo: n * factorial(n-1)

;; Ejemplo de uso:
(displayln (factorial 5))  ;; Debería retornar 120



;; Ejercicio 4 – Elevar cada número al cubo
;; Objetivo: Aplicar funciones lambda dentro de map.

(define (elevar-al-cubo lista)
  ;; Usamos map con lambda para elevar cada número al cubo
  (map (lambda (x) (* x x x)) lista))

;; Ejemplo de uso:
(displayln (elevar-al-cubo '(2 3 4)))  ;; Debería retornar '(8 27 64)




;; Ejercicio 5 – Sumar todos los elementos impares
;; Objetivo: Usar filter y foldl combinados para obtener una suma condicional.

(define (sumar-impares lista)
  ;; Filtrar los números impares
  (define impares (filter odd? lista))
  
  ;; Sumar todos los números impares usando foldl
  (foldl + 0 impares))

;; Ejemplo de uso:
(displayln (sumar-impares '(1 2 3 4 5 6 7)))  ;; Debería retornar 16




;; Ejercicio 6 – Determinar si una lista contiene números negativos
;; Objetivo: Usar any oormap con una función lambda para verificar condiciones.

(define (contiene-negativos? lista)
  ;; Usamos ormap para verificar si algún elemento es negativo
  (ormap (lambda (x) (< x 0)) lista))

;; Ejemplo de uso:
(displayln (contiene-negativos? '(5 9 -3 2)))  ;; Debería retornar #t





;; Ejercicio 7 – Calcular la suma acumulada de una lista
;; Objetivo: Reforzar el uso de foldl para crear acumuladores personalizados.

(define (suma-acumulada lista)
  (reverse (foldl (lambda (x acc) (cons (+ x (if (null? acc) 0 (car acc))) acc)) '() lista)))

;; Ejemplo de uso:
(displayln (suma-acumulada '(1 2 3 4)))  ;; Debería retornar '(1 3 6 10)



;; Ejercicio 8 – Concatenar cadenas de texto en una lista
;; Objetivo: Practicar foldl con operaciones sobre cadenas.

(define (concatenar-cadenas lista)
  ;; Usamos foldl para concatenar las cadenas
  (foldl string-append "" lista))  ;; string-append concatena las cadenas, inicializamos con una cadena vacía

;; Ejemplo de uso:
(displayln (concatenar-cadenas '("Hola" " " "Mundo")))  ;; Debería retornar "Hola Mundo"





;; Ejercicio 9 – Generar lista con el doble de los números mayores que 5
;; Objetivo: Combinar map y filter con condiciones lógicas.

(define (doblar-mayores-que-cinco lista)
  ;; Filtrar los números mayores que 5
  (define mayores-que-cinco (filter (lambda (x) (> x 5)) lista))
  
  ;; Mapear para duplicar los números
  (map (lambda (x) (* 2 x)) mayores-que-cinco))

;; Ejemplo de uso:
(displayln (doblar-mayores-que-cinco '(3 6 8 2 10)))  ;; Debería retornar '(12 16 20)





;; Ejercicio 10 – Invertir el orden de una lista
;; Objetivo: Usar foldl o recursión para invertir el orden de los elementos.

(define (invertir-lista lista)
  ;; Usamos foldl para invertir la lista
  (foldl (lambda (x acc) (cons x acc)) '() lista))

;; Ejemplo de uso:
(displayln (invertir-lista '(1 2 3 4)))  ;; Debería retornar '(4 3 2 1)



;; Ejercicio 11 – Crear una función que reciba una función como parámetro
;; Objetivo: Comprender la naturaleza de las funciones de orden superior.

;; Función que recibe otra función como parámetro
(define (aplicar-funcion func lista)
  (map func lista))  ;; Aplicamos la función a cada elemento de la lista

;; Función cuadrado
(define (cuadrado x)
  (* x x))  ;; Devuelve el cuadrado de un número

;; Ejemplo de uso:
(displayln (aplicar-funcion cuadrado '(1 2 3 4)))  ;; Debería retornar '(1 4 9 16)





;; Ejercicio 12 – Reto integrador: combinar múltiples funciones
;; Objetivo: Usar map, filter y foldl en un mismo programa para calcular el promedio de los números mayores a 5 en una lista.

(define (promedio-mayores-que-cinco lista)
  ;; Filtrar los números mayores a 5
  (define mayores-que-cinco (filter (lambda (x) (> x 5)) lista))
  
  ;; Calcular la suma de los números mayores a 5 usando foldl
  (define suma (foldl + 0 mayores-que-cinco))
  
  ;; Calcular el promedio dividiendo la suma entre la cantidad de elementos
  (define cantidad (length mayores-que-cinco))
  
  ;; Retornar el promedio como un número decimal (en punto flotante)
  (if (> cantidad 0)              ;; Evitar división por cero
      (/ (exact->inexact suma) cantidad)  ;; Convertir la suma a punto flotante
      0))

;; Ejemplo de uso:
(displayln (promedio-mayores-que-cinco '(3 8 10 4 9 2 7)))  ;; Debería retornar 8.5
