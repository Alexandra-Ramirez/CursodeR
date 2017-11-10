
# Nombre: Alexandra Ramirez Flores 20141469J

# Respuesta: Este problema muestra algunas definiciones sobre la vectorización y el reciclado en R. 


# a) 
      X <- matrix(1:9, nrow = 3, ncol = 3, byrow = T )
      X
    
      p <- apply( X, 1, function(x) all( x>0 & !is.na(x)))
      p
      

# b)

 #  1) Vectorizacion : Una funcion vectorizada en R significa que utiliza propiedades o funciones
     # que ya estan establecidad en R. Eso no quiere decir que el codigo sea mas rapido , sino 
    # mas facil de entender. 
     
     # Primer ejemplo : Media de un arreglo de números 
           # sin vectorizacion 
    
            
                 x <- runif(10000000,min=4456, max = 1002345)
                 x
       
       
                   media <- function(x) { sum(x) / length(x)}
                   media(x)
       
      
            # vectorizado 
                  mean(x)
                  
      
#    2) Reciclado: Una funcion obedece el reciclado cuando trata de completar los valores que le
#                  faltan. 
                
              # Ejemplo : Usando la funcion rbind podemos juntar dos matrices, a pesar de que no tengan
              # el mismo numero de filas 
                  
                ma <- matrix( 1:9, nrow = 3)
                ma
                ma1 <- matrix(3:8, nrow= 2)
                ma1
                
                rbind(ma,ma1)
              
      
       
     
       