
#Nombre: Alexandra Ramirez Flores
#Respuesta2:

# El codigo muestra los valores de la secuencia 1,-2,3,-4,...,99,-100
# El codigo muestra los valores de la secuencia de los 1oo primeros valores del factorial
# El codigo muestra las 100 primeras potencias de 2

  
   v <- 1:100
   while(i < 100){
     if(i %% 2 == 0){
       v[i] = v[i]*-1
     }
     i = i+1
   }
   print(v[i])
   
   factorial(1:100)
   
   2^(1:100)
   
