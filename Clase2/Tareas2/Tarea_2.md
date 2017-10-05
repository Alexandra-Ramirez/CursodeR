
# Lista de Ejercicios
 

1. Experimenta con los siguientes comando e interpreta los resultados:



* ``echo hello world``  
Este comando nos muestra en la terminal ``helo world``.

* ``passwd``  
Este comando es para poder cambiar la contraseÃ±a de usuario.
&nbsp;
&nbsp;  
* `` date``  
Nos muestra la fecha y hora actual.
&nbsp;
* ``hostname``  
Nos muestra el nombre de nuestro host.
&nbsp;
* ``arch``  
Nos muesra la arquitectura de nuestra pc.
&nbsp;
* ``uname -a``  
Obtenemos nombre e informaciÃ³n sobre el kernel actual.
&nbsp;
* ``dmesg | more``  
Este comando nos lista el buffer de mensajes del nÃºcleo.
&nbsp;
* ``uptime``  
Nos muestra el tiempo que la computadora ha estado iniciada sin haber sido reiniciada. 
&nbsp;
* ``who am i``  
Esto nos muestra al usuario conectado actual.
&nbsp;
* ``who``  
Eso nos muestra una lista de los usuarios conectados actualmente. 
&nbsp;
* ``id``  
Nos muestra el identificador actual y real de usuarios y grupos.
&nbsp;
* ``last``  
Nos muestra las entradas al sistema.
&nbsp;
* ``finger``  
Muestra la informacion de usuario como el nombre de acceso, el nombre real, nombre de la terminal y el estado de escritura.
&nbsp;
* ``w``  
Muestra que usuarios que estan conectados y que procesos han hecho en la mÃ¡quina.
&nbsp;
* ``top``  
Nos muestra el estado el sistema y los procesos en tiempo real.  
&nbsp;
      

2 . Realiza las siguientes actividades:

* Crea dos directorios llamados a1 y a2 en el directorio /home.

```
  alexandra@alexandra-HP-Notebook:~$ mkdir a1
  alexandra@alexandra-HP-Notebook:~$ mkdir a2
  
```

* Copia el archivo /etc/passwd al directorio a1 y escribe las primeras 30 lineas del archivo http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything al directorio a2.  
~~~
alexandra@alexandra-HP-Notebook:~$ cp /etc/passwd a1
~~~
Descargamos todo el contenido de la página. 

 ~~~
 alexandra@alexandra-HP-Notebook:~$ wget -O - http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-  command-line-for-almost-anything > archivo
 ~~~
Copiamos las 30 primeras líneas de la página.  
        
 ~~~
 alexandra@alexandra-HP-Notebook:~/a2$ head -30 archivo | tee /home/alexandra/a2/archivo2
 
 ~~~

* Usa `find` para mostrar los nombres de todos los archivos en árbol de directorios de /home.
 ~~~
  alexandra@alexandra-HP-Notebook:~$ find /home
 ~~~

* Usa `locate` para encontrar todos los nombres de archivos que contengan la palabra **commands** en el árbol de directorios de /home.
~~~
alexandra@alexandra-HP-Notebook:~$ locate /home/alexandra/*commands*
~~~

* Utilice ``find``, ``grep`` y ``sort`` para mostrar una lista ordenada de todos los archivos en todos los subdirectorios de / home que contienen la palabra **commands** , **R**, **Python** en algún lugar dentro de ellos.
~~~
find . -type f | grep -e "R" -e "Python" -e "commands" | sort
~~~

3 .Ejecuta el siguiente script y explica que es lo que hace.

```Bash
#!/bin/sh
for f in $*
do
  if [ -f  $f -a  ! -x  $f ]
  then
    case $f in
    core)
      echo "$f: archivo de memoria"
      ;;
    *.c)
     echo "$f: un programa en C"
      ;;
    *.cpp|*.cc|*.cxx)
      echo "$f: un programa en C+"
      ;;
    *.txt)
      echo "$f: un archivo de texto"
      ;;
    *.pl)
      echo "$f: un script de Perl"
      ;;
    *.html|*.htm)
      echo "$f: un documento web"
      ;;
    *)
      echo "$f: aparece ser  "`file -b $f`
      ;;
    esac
  fi
done
```
El script lee e identifica la extensión de un archivo que le estemos pasando como argumento. 


4.Sigue los siguientes pasos para ejecutar el siguiente script llamado **bash_script**:
```Bash
#!/bin/sh
# este es un comentario
echo "El numero de argumentos es  $#"
echo "Los argumentos son $*"
echo "El primero es $1"
echo "Mi numero de proceso es  $$"
echo "Ingresa un numero desde el teclado: "
read numero
echo "El numero que has ingresado es $numero"
  ```

Ejecutamos el script de la siguiente manera:
~~~
ls -l bash_script
chmod +x bash_script
ls -l bash_script
./bash_script hola a todos
~~~

Al ejecutar nos muestra en la terminal lo siguiente:
~~~
El numero de argumentos es  3
Los argumentos son hola a todos
El primero es hola
Mi numero de proceso es  10272
Ingresa un numero desde el teclado: 
12
El numero que has ingresado es 12
~~~


5.Prueba en secuencia los siguientes comandos y explica tus pasos

| Cabecera A      |Cabecera B |
| ----------------|:----------:|
|`cd`            | Del lugar donde estoy cambia a `/home/alexandra`.|
|`pwd`           | Me muestra en que lugar estoy, en este caso en `/home/alexandra`.|
|`ls -al`        | Nos lista todos los files(archivos) del directorio `/home/alexandra`, incluye sus permisos, id,fecha, etc. 
|`cd .`          | Nos ubica en el directorio.
|`pwd`           | Nos muestra el lugar donde me encuentro. 
|`cd ..`         | Nos dirige al directorio  `/home`.
|`pwd`           | Nos muestra el lugar donde estamos, en este caso en el directorio padre `/home`.
|`ls -al`        | Nos lista todos los files, ocultos también, del directorio `/home`.
|`cd ..`         | Nos cambia al root, o `/`.
|`pwd`           | Nos muestra el lugar donde estamos, en este caso en el root `/`.
|`ls -al`        | Nos muestra los files del root. 
|`cd ..`         | No ocurre nada, ya que no hay otro directorio superior al root `/`.
|`pwd`           | Nos sigue mostrando el lugar donde estamos.
|`cd /etc`       | Nos dirige al directorio `/etc`.
|`ls -al more`    | Nos muestra los files del directorio `/etc` pero con la opción de poder visualizarlo por partes.
|`cat passwd`    | Nos muestra el contenido del archivo `passwd`.
|`cd -`          | Nos dirige al directorio root o padre `/`.
|`pwd`           | Nos muestra que estamos en el directorio `/`.


6 . Revisa el archivo **chipotle.tsv** dentro del repositorio del curso, en la carpeta donde se aloja esta tarea. Piensa un minuto en cómo se estructuran los datos. ¿Qué crees que significa cada columna? ¿Qué crees que significa cada fila?. Responde las siguientes preguntas.  

Guardamos el archivo **chipotle.tsv** en nuestro escritorio.  
Analizando cada columna:  
* `order_id` : Significa el la identificación de una orden en específico.
* `quantity` : Representa la cantidad del ítem correspondiente. 
* `item_name`: Significa el nombre del ítem.
* `choice_description` : Respresenta la descripcion de cada ítem. 
* `item_price`: Representa el precio de la orden.  

Cada fila significa la cantidad de un pedido en específico.  

* ¿Cuántas órdenes aparecen en el archivo?  
Hay 1834 órdenes.  
<br/>
* ¿Cuántas líneas hay en este archivo?  
Para poder contabilizar el número de líneas, usamos el siguiente comando:
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ wc -l chipotle.tsv 
~~~

Hay 4623 líneas.
<br/>

* ¿Qué burrito es más popular, el de carne o pollo?
Para poder contar cuantos burritos de pollo hay, usamos lo siguiente:  
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ grep -c "Chicken Burrito" chipotle.tsv 
~~~

Hay 553 burritos.  
<br/>
Ahora contabilizamos los burritos de carne.
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ grep -c "Steak Burrito" chipotle.tsv  
~~~  
Hay 368 burritos de carne.  
Entonces podemos concluir que los burritos más populares son los de pollo.  
<br/>
* ¿Los burritos de pollo tienen más frecuentemente frijoles negros o frijoles pintos?
<br/>

Usamos el siguiente comando para poder contar cuantos frijoles negros hay en los burritos de pollo.
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ grep "Chicken Burrito" chipotle.tsv | grep  "Black Beans" | wc -l 
~~~

Hay 282 frijoles negros.
<br/>
Ahora contabilizamos los frijoles pintos.
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ grep "Chicken Burrito" chipotle.tsv | grep  "Pinto Beans" | wc -l
~~~
Hay 105 frijoles pintos.
<br/>
Analizando los resultados, podemos concluir que los burritos de pollo, utilizan mas frijoles negros.
<br/>
* Haga una lista de todos los archivos CSV o TSV en el repositorio del curso (usando un solo comando). Piense en cómo los caracteres comodín pueden ayudarte con esta tarea. Cuente el número aproximado de apariciones de la palabra "dictionary" (independientemente del caso) en todos los archivos del repositorio del curso.  

Para poder realizar lo pedido usamos el siguiente comando:
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ find . -name '*.csv' -o -name '*.tsv'
~~~
Donde `find` nos ayuda a encontrar lo pedido, junto con el nombre.

<br/>
Ahora para contar la palabra "dictionary", usaremos lo siguiente:
~~~
alexandra@alexandra-HP-Notebook:~/Escritorio$ grep -c "dictionary" 
~~~

