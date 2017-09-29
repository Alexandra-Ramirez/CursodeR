#Nombre: Alexandra Ramirez Flores
#Respuesta3: El codigo compara 

# a) 
   a <- 2
   v <- c(2,4)
   match(a,v)
   
   min(which(v == a)) #which retorna el indice donde se cumple la condicion 
   
   a <- c(1,6)
   v <- c(1,6)
   match(a,v)
  
   min(which(v == a))
   
   a %in% v # retorna TRUE o FALSE si se cumple la condicion 
   
# b) El codigo usa la funcion system.time para calcular los tiempos de ejecucion
   
  
     y <- c()
     system.time(for (t in 1:100) y[t] = exp(t))
     
     
     system.time( y <- exp(1:100))
    
   
     system.time (y <- sapply (1:100,exp))
     
     
# c) El codigo muestra el uso de la funcion nchar para calcular el numero de letras. 
     
     sea_shells <- c("She","sells","sea","shells","by","the","seashore","The","shells","she",
                     "sells","are","surely","seashells","So","if","she","sells","shells","on",
                     "the","seashore","I'm","sure","she","sells","seashore","shells")
  
     d <- nchar(sea_shells, type = "chars")
     d
     
     i = 1
     while(i!= 0){
       if(d[i] == 2){
         print(sea_shells[i])
       } else if(d[i] == 3){
          print(sea_shells[i])
         }else if (d[i] == 4){
            print(sea_shells[i])
         } else if(d[i] == 5){
             print(sea_shells[i])
         } else if(d[i] == 6)
             print(sea_shells[i])
         i = i+1
      }
     
       
       
     
   
   
   
   
   
     
    
   
   
   
   
   
   
   
   
 
   
   
   
