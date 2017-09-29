#Nombre: Alexandra Ramirez Flores
#Respuesta4: El codigo muestra la funcion tst() para valores x = 0, x = inf y x = 2

# a)
tst4 <- function(x){
  if(x < 2) "muy negativo"
  else if( x < 1) " cercano a cero"
  else if (x < 3) " in[1,3)"
  else "large"
}

  tst4(0)

  tst4(Inf)
  
  tst4(2)
  
# b)  

  x <- c(Inf, 3:5)
  
  Tst4 <- function(x){
  ifelse(x <2, "muy negativo", ifelse(x<1, "cercano a cero", ifelse(x<3, "in[1:3)", "large")))
    
  }
  
  Tst4(x)
  
  
