# Nombre: Alexandra Ramirez Flores Codigo: 20141469J

# Respuesta: El código muestra una función Geolista que calcula la media geometrica de una lista 

geolista1 <- function(x) {
    geo.metrica <- function(y) {
        return((prod(y)^(1/length(y)))) # funcion interna que retorna la media geometrica
    }
    
    for(k in 1:length(x)){
       if(is.vector(x[[k]])){ # usamos los dobles corchetes, ya que estamos trabajando con 
                             # una estructura de tipo lista
          x[[k]] <- geo.metrica(x[[k]])
        } 
        else {
        x[[k]] <- apply(x[[k]],1,geo.metrica)
        }
    }
    return(x)
}
   
# Comprobando la función hecha anteriormente  
f4 <- list(1:3, matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),4,2),matrix(c(3.3,3.2,2.8,2.1,4.6,4.5,3.1,9.4),2,4))
geolista1(f4)
f5 <- list(1:9,matrix(1:9,1,9),matrix(1:9,9,1),matrix(1:9,3,3))
geolista1(f5)

