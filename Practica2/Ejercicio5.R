# Nombre: Alexandra Ramirez Flores 20141469J

# Respuesta: El codigo muestra las filas que contienen exactamente dos ocurrencias de siete y 
#             los pares de columnas donde su suma es mayor a 75. 

 set.seed(75)
 aMat <- matrix(sample(10, size = 60, replace = T), nr = 6)
 aMat
 
 # a) 
     cant_mayores_porfila <- function(x) { sum(x>4)}
     
 
 
 # b)
     # cant_sietes tendra las veces que se repite el numero siete por fila
     cant_sietes <- apply(aMat,1, function(x) {sum(x==7)})
     fil_siete <- which(cant_sietes == 2)
     fil_siete
 
 # c) 
     # sumamos todos los valores de cada columna
     suma_col <- apply(aMat,2, function(x) { sum(x)})
     suma_col
     # creamos la matriz col_matrix con todas las sumas posibles del resultado obtenido de suma_col
     col_matrix_suma <- matrix(suma_col + rep(suma_col, each = 10), nrow = 10, byrow =  F)
     col_matrix_suma
     
     # Usamos la funcion which para poder mostrar una matriz con dos columnas, solo se muestra 
     # los que cumplan la condicion 
     
     matrix_resul_index <- which(col_matrix_suma>75, arr.ind = TRUE)     
     matrix_resul_index
     
     
     #Reemplazamos los valores inferiores de la diagonal principal de la matriz(col_matrix_suma) por NA
     col_matrix_suma[lower.tri(col_matrix_suma, diag = TRUE)] <- NA
     col_matrix_suma
     matrix_resul_1<- which(col_matrix>75, arr.ind = TRUE)  
     matrix_resul_1
     
     # Se puede observar que solo la matriz de salida contendria pares diferentes dos a dos .
     
     
     n_matrix