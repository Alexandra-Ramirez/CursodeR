# Laboratorio 6

1) ¿Qué ocurre cuando a un factor modificas sus niveles(levels)?
   ```R
    f1 <- factor(letters)
    levels(f1) <- rev(levels(f1))
    f1
    ```
    Se cambian el orden de los elementos y también de sus levels.  

2) ¿Cómo deberias describir los tres objetos?
     ```R
     x1 <- array(1:5, c(1, 1, 5))  # 5 vectores donde cada vector es de dimensión 1 x 1
     x2 <- array(1:5, c(1, 5, 1))  # una matriz que tiene una fila y 5 columnas 
     x3 <- array(1:5, c(5, 1, 1))  # una matriz que tiene 5 filas y una columna
    ```  

3) ¿Qué atributos posee un data frame?.
 - Argumentos con un valor 
 - row.names:  Puede ser una cadena para especificar una columna y usarla como nombres de una fila.
 - chek.rows:  Esto verifica la longitud de las filas y los nombres.
 - check.names: Esto verifica los nombres que hay en el dataframe y que no haya duplicados.
 - stringsAsFactors: Si es TRUE, los vectores del dataframe se convertiran en factores (aunque ya está como TRUE, sino   queremos solo le ponemos FALSE).  

4) ¿Qué hace as.matrix() cuando se aplica a un data frane con columnas de diferentes tipos?.
   ```R
   df2 <- data.frame(a = 5:7, b = letters[5:7])
   df2
   as.matrix(df2) 
   ``` 
    Lo muestra como una matriz o vector de caracteres.  
 5) ¿Puedes tener un data frame con 0 filas? ¿Qué hay de 0 columnas?  
 Sí, veamos un ejemplo. 
    ```R
    # dataframe con filas 0
    df4 <- data.frame(a= integer(0), b= integer(0))
    df4
    # dataframe con filas 0 y columnas 0
    d00 <- df4[,FALSE] 
    d00
    ```  
    ```R
    [1]  a b
        <0 rows> (or 0-length row.names)  
        data frame with 0 columns and 0 rows
    ````
6) ¿Qué devuelve dim() cuando se aplica a un vector?  
   ```R
    x <- c(1,2,3,4)
    dim(x)
    ```
   Muestra null.  
7) Si `is.matrix(x)` es TRUE, ¿qué devolverá `is.array(x)`?  
   Devolverá TRUE, ya que una matriz es un array bidimensional.  
8) ¿Cuál es  el funcionamiento de `is.vector()` y `is.numeric()`? y explica que tiene de diferente con ¿`is.list()` y `is.character()`?.  
  *  `is.vector()`: Es para verificar si nuestro "vector" es de un solo tipo. 
  *   `is.numeric()`: Verifica si un valor es de tipo numérico pero es más general, acepta double o enteros.
  En cambio  `is.list` retorna TRUE solo si los valores pertenecen a una lista y `is.character` retorna TRUE solo si los valores son de tipo caracter.  

9) ¿ Por qué es 1 = "1" verdad (TRUE)?. Por qué -1 < FALSE verdad?, ¿ Por qué "one" < 2 es falso (FALSE)?.  
   ```R
   x <- 1
   b <- "1"
   cond1 <- x==b  # TRUE, ya que ambos son vectores 
   cond1
  
   cond2 <- -1<FALSE
   cond2   # TRUE, ya que FALSE es como 0 
 
   cond3 <- "one" < 2
   cond3    # Es FALSE, ya que su valor como entero no existe. 
   ```  
10) Predice la salida del siguiente código.  
    ```R
      c(1, FALSE)  # 1 0
      c("a", 1)    # a 1 
      c(list(1), "a") #vUna lista conformada por [1] y [a]
      c(TRUE, 1L)  # 1 1
    ```  