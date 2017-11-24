# Nombre: Alexandra Ramirez Flores Codigo: 20141469J



# a) 
    mtcars[1:4,] # aqui al colocar -1, R no lo reconoe ya que el indice siempre empieza en 1
    mtcars[mtcars$cyl<=5,] # aqui para poder mostrar la condicional, debemos ponerle ",", ya que solo
                           # se estaba haciendo una operacion a las filas. 
    mtcars[mtcars$cyl == 4 | mtcars$cyl == 6,] # al momento de colocar solo 6, se entiende como 
                                               # una condicionl nula, para que haga lo que queremos
                                               # debemos ponerle nuevamente la columna cyl despues 
                                               # de "|". 
    
# b) 
    x<- 1:5 
    x
    x[NA]
    class()
    
# c)
    mtcars[1:20]
    mtcars[1:20,] # como mtcars es un dataframe para visualizar los datos, debemos de colocar
                  # "," despues del primer argumento. asi se mostrara todas las 20 filas con 
                  # sus respectivas columnas.
# d) 
    
  
    
    
