# Nombre: Alexandra Ramirez Flores 


 # a) 
     # El objeto iris es una estructura de tipo datframe.
     # Tiene 150 lineas, y se puede saber eso con la funcion nrow(iris)
     # Tiene 5 columnas, basta con escribir ncol(iris), y los nombres de las 
     # columnas correspondiente se pueden observar con names(iris)

 # b)
     summary(iris)
     # Al ejecutar la funcion summary, nos proporciona información, como el valor mínimo,
     # el primer cuartil, la mediana, la media, el tercer cuartil y el valor máximo.
     
 # c) 
     min(iris$Sepal.Length)
     ?quantile
     quantile(iris$Sepal.Length,names = TRUE, prob= 0.25 ,type = 1) # first quantile
     mean(iris$Sepal.Length)
     median(iris$Sepal.Length)
     quantile(iris$Sepal.Length, names = TRUE, prob = 0.75, type = 3) # third quantile
     max(iris$Sepal.Length)
  