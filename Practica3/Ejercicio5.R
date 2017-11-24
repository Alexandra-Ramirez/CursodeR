# Nombre: Alexandra Ramirez Flores
# codigo: 20141469J

# Respuesta: El código muestra la autocorrelacion para un cierto vector, pero solo retorna dos valores

# a) 

k <- 1:2
lista <- numeric(2)
as.list(lista)
tmpFn <- function(x) {
  
    for( k in 1:2 ){
      
      for( i in (k+1):length(x) ){
           p = (x[i] - (x[i]/n))*(x[i-k]-(x[i]/n)) 
         }
      for(i in 1:length(x)){
           q = (x[i] - (x[i]/n))^2        
      }
      
      lista[[k]] = p/q
    }
    
  return(as.list(lista))
}

x <- seq(2,56, by =3) 

tmpFn(x) # llamando a la funcion 

# b) 
   lista <- numeric(2)
   tmpFN <- function(x,k){
     
     for(k in 1:length(x)-1){
        for(i in (k+1):length(x)){
          p <- 0
          p = (x[i] - (x[i]/n))*(x[i-k]-(x[i]/n)) + p
        }
       
       for(i in 1:length(x)){
         q <- 0
         q = (x[i] - (x[i]/n))^2 + q   
       }
       
       lista[[k]] = p/q
     }
     
     return(as.list(lista))
   }
   
   tmpFN(x,2)
     
     
   