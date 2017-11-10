#Nombre: Alexandra Ramirez Flores
# Resultado: El código muestra dos funciones, primero,extrae los k primeros valores en el orden del vector
# y ultimo, extrae los k ultimos valores del vector. 

 x <- c(1,3,8,4)
 
 # a) 
 
     primero <- function(x,k) { 
       if(k <= length(x) ) {
          x[(1:k)] 
       }
     }
     
     ultimo <- function(x,k)  {
       
        if( k <= length(x))  
          {
            x[(length(x)-(k-1)): length(x)]
        }
     
     } 
       
  
 # b) 
     
     primero <- function(x,k) { 
       if(k <= length(x) ) {
         x[(1:k)] 
       }
       else {
         if(k>length(x))
           return(x)
       }  
     }
     
     ultimo <- function(x,k)  {
       
       if( k <= length(x))  
       {
         x[(length(x)-(k-1)): length(x)]
       } else {
         if(k>length(x))
           return(x)
       }
       
     } 
     
  # c)
     
     primero <- function(x,k) { 
       if(k <= length(x) ) {
         x[(1:k)] 
       } else {
           if( k> length(x)) {
              return(NA)
           }
         
       }
     }
     p <- numeric(0)
     ultimo <- function(x,k)  {
       
       if( k <= length(x))  
       {
         x[(length(x)-(k-1)): length(x)]
       } else {
             if( k> length(x)) {
               p[1:(k-length(x))] <- NA
               p
         }
       }
       
     }
     