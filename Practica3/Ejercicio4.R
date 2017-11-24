# Nombre : Alexandra Ramirez Flores 
# código: 20141469J



# a)
   f1 <- function(x = {y <- 1; 2}, y = 0) {
     x+y
   }
   f1()
  
   x = {y <- 1;4}
   x
   y
   # Respuesta: El código anterior muestra la suma de dos numeros, pero le asignamos previamente+
                # ya valores predeterminados, en el ejemplo x = 2 e y = 1
   
# b)
   
   trimss<- c(0,0.1,0.2,0.5)
   x <- rcauchy(100)
   lapply(trimss,function(trim) mean(x, trim = trim))
   
   lapply(trimss,mean, x =x)
   
   # Ambos son equivalenes ya que en la segunda invocacion de lapply, su segundo argumento
   # puede ser una funcion, en este caso directamente ponemos "mean" . Y la funcion mean tiene 
   # tres argumentos, en los cuales uno de ellos es trim, pero para este caso el trim, seria 
   # x = x.
   
# c) 
    # Usando la funcion apply
   
   (mimatrix <- matrix(1:14, nrow = 2, ncol = 7, byrow = T ))
   (ind_fil <- apply( mimatrix, 1, function(x) all( x>0 & !is.na(x)))) # retorna TRUE 
                                                                      # si el indice cumple 
                                                                      # la condicion 
   
   # Usando for 
   
   fila = numeric(0)
   for(i in 1:nrow(mimatrix)){
     if (all(mimatrix[i,] > 0 & !is.na(mimatrix[i,]))) {
       fila <- i
      
     }
   }
   
# d)
   
   
   
   
   
   
   
   
  
   
   