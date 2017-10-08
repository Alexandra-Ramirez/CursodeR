
# Resúmenes

**Índice**     
1. [Aplicaciones de la programación de R](#id1)
2. [Video: The Data Scientist - 60 Second Data Science](#id2)
3. [Impatient R](#id3)

## Aplicaciones de la programación de R <a name="id1"></a>

### Cómo se aplica la programación de R 
El lenguaje **R** es utilizado para algunas aplicaciones, tales como en la Ciencia de Datos y en algunas empresas como **Google**, **Facebook** y **Linkedln**.  
**R** proviene del lenguaje **S**, este uíltimo desarrolado por [John T.Chambers](https://en.wikipedia.org/wiki/John_T._Chambers), en los laboratorio Bell.  
La programación en **R** nos brinda una variedad de pruebas estadísticas tradicionales, agrupación, técnicas gráficas, entre otros como se puede observar en la Figura1.  

![Figura1. Análisis de Negocios con R](https://elearningindustry.com/wp-content/uploads/2016/02/op.png "Análisis de Negocios con R")  

Podriamos decir que también **R** abarca diversas áreas como, las ciencias duras, la astronomía, la química y la medicina.  
Este lenguaje facilita mucho a los analistas en el tema de finanzas, así pueden limpiar datos, importar, investigar  y visualizar toda la aplicación que es generado por el comercio.  

### ¿Por qué debe usted adoptar la programación R?

* La respuesta es simple, el lenguaje **R** es más que eso, nos permite crear objetos, usar paquetes y funciones.  
* Es gratis, y se puede usar en cualquier sistema operativo.  
* Es *Open Source*, es decir uno puede ver su código y también los demás, así no seria necesario esperar al administrador que realizó eso para que lo arregle (si es que hubiese algún error), sino uno mismo puede hacerlo.  
* Integra muchos lenguajes, entre ellos **C++**, **Java**, **Python**.  
* Tiene facilidad para poder manipular los datos.
* Es utilizable en casi todos los campos: Finanzas, Biociencias y Marketing.
* **Google** utiliza lenguage R.
* Las librerías de R ayudan en la estadística y en las gráficas que uno quiere realizar. 
* Los usuarios pueden escribir en **C/C++**, **Java** o **Python** para poder manejar objetos de R.

## Video: The Data Scientist - 60 Second Data Science<a name="id2"></a>

Un científico de datos, es una persona que trabaja con una cantidad de datos para poder llegar a varias conclusiones.  
Trabajan en empresas u organizaciones reuniendo y manipulando una gran cantidad de datos. Lo hacen con algunas herramientas de estadística, aprendizaje automatizado, matemática modelada, programación y base de datos.  

Primero el cientifico de datos, debe de poder entender las cuestiones de negocios, después busca los datos que le sean necesarios para su experimento y plantea su hipótesis. Con los datos ya obtenidos los modela con algún lenguaje en este caso **R** o **Python**. Luego los datos se analizan mediante gráficas. Asi mediante estadística comprueba la hiṕotesis planteada. Finalmente los resultados se comunican con las personas que también trabajan en el mismo proyecto. 

Video : <https://www.youtube.com/watch?v=i2jwZcWicSY>


## Impatient R<a name ="id3"></a>

Este documento trata sobre los principales y básicos conceptos del lenguaje **R**. El autor nos dice que para aprenderlo debemos perderle el miedo a este lenguaje.  

R funciona con varios paquetes unidos, para poder verlos usamos el siguiente comando: 
```
  >search()
  ```
También podemos guardar todos los objetos creados. 

### Objetos básicos:

* "atomic vector" : Son de tres tipos: 
   1. "numeric" 
   2. "logical"
   3. "character"


* "list" : Pueden tener diferentes tipos de elementos.

* "NULL" : Es un objeto que tiene longitud cero. 

* Objetos derivados: 
   1. Matrix y dataframe: Son objetos de datos rectangulares. La diferencia entre ellos, es que la matriz tiene elementos del mismo tipo atómico, en cambio en los dataframe los elementos pueden ser de diferentes tipos.
   2. Factor: Representan datos categóricos.

### Acciones claves: 

1. Assignment: Las funciones devuelven un valor, por lo tanto debemos asignarle ese valor a un nombre.  
   Se puede hacer de la siguiente manera: 
   ```
     x <- c(1,2)
   ```
   o
     ```
     x = c(1,2)
     ```
   Una vez que se ejecute `x` ya sera parte del entorno.
   
   </br>   
2. Subscripting: Es muy importante ya que usandolos podemos extraer valores. Se hace mediante `[]`.
   ```
     x[1]
   ```
   
   Significa que se extrae el primer elemento de `x`, en este caso 1.
   
   </br> 
3. Random generation: Existen varias funciones que producen valores aleatorios, como por ejemplo: 
   ```
     runif(5)
   ```
   Esto crea un vector de longitud 5 con distribucion uniforme. 
   
   </br>
4. Graphics: Se puede usar `ggplot` para poder realizarlo.


## Lectura de datos en R 

Para poder obtener datos rectangulares usaremos la función read.table, eso nos devolverá un marco de datos.  

## Observando objetos

Hay de dos formas: 

1. Imprimiento el objeto: Usaremos lo siguiente
   ```
   >print(x)
   ```
    Respecto al ejemplo anterior nos imprimirá `1 2`. 
    
    </br>
2. Verificando si el objeto existe: Utilizamos lo siguiente
   ```
   >ls()
   ```
   
## Guardando objetos

A veces es necesario guardar los objetos que usamos, por el mismo hecho de que en otro programa quizás los volveremos a usar.  
Lo haremos de la siguiente manera:  
```
 >save(x, file="x.rda")
```
Y para poder usarlo en otro archivo usamos
```
 >attach("x.rda")
```

## Errores y advertencias

Usualmente al momento de escrbir nuestro programa, nos puede salir error o advertencia. La diferencia es que los errores detienen el programa en cambio la advertencia no.  
Los errores se dividen en 4 tipos:  

1. Errores de sintáxis: Ocurre cuando se ingresa un comando erróneo, es decir que **R** no lo reconoce. Puede ser una falta de paréntesis, falta de un corchete, etc. 

   </br>
2. Objeto no encontrado: Puede ser causado por 
   * Escritura errónea.
   * El paquete no está en la lista de búsqueda. 
   
   </br> 
3. Otros errores: Para poder darnos cuenta utilizamos lo siguiente
   ```
    >traceback()
   ```
4. Advertencias: No dan problemas al momento de ejecutar el programa, pero puede ser que el resultado sea falso.

## Gráficos

**R** inicializará un dispositivo gráfico al momento de que le pidamos hacerlo.  

El comando más importante es:
```
  >plot()
```

Esto nos creará un trama donde podremos visualizar nuestra gráfica.


## Funciones y objetos mágicos.

En este caso, se refiere a objetos mágicos a los que tienen "clase", y a las funciones mágicas, a las "genéricas". 

Un ejemplo de las funciones genéricas son el `print` y `plot`.  

## Vectorización

Esto significa que se trata a un valor como un todo, en vez de tratar cada valor como si fuera uno solo.  
Por ejemplo:
 ```
  > x+2
 ```
Aqui se añade + 2 a cada elemento del vector x, sin importar el tamaño.  

## Algunos tipos de archivos 

Existen 4 tipos de archivos:

1. .R 
2. .RDA
3. .TXT
4. .CSV

## Cómo leer un archivo de ayuda

Para poder saber que es un comando en específico o que parámetros usa, debemos hacer lo siguiente:
 ```
  >?mean
 ```
R se encargará de mostrarnos la descripción de lo que buscamos y algunos ejemplos.  

## Paquetes(Packages)

Algunos paquetes ya se inician con R, pero algunos no, entonces para poder observar todos los paquetes disponibles, usamos: 
 ```
  >library()
 ```
Este comando nos muestra una lista de paquetes, el mas común es CRAN, si no hay un paquete que queremos, simplemente lo instalamos, de la siguiente manera: 
 ```
  >install.packages("sets")
 ```
Y para poder usarlo, escribimos: 
 ```
  >require(sets)
 ```

## Conceptos erróneos debido a un lenguaje usado anteriormente

Hay algunas diferencias, entre ellas

* Llegar a R desde Excel u otras hojas de cálculo.
* Llegar a R desde paquetes de estadísticas.
* Llegando a R desde SQL (o viceversa).
* Llegar a R desde otros lenguajes de programación.


