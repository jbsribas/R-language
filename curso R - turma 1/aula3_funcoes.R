par_ou_impar <- function(x){
  
  # verifica se o n�mero � um decimal comparando o tamanho da diferen�a de x e round(x)
  # se for decimal retorna NA (pois par e �mpar n�o fazem sentido para decimais)
  if (abs(x - round(x)) > 1e-7) 
      return(NA)
  
  
  # se o n�mero for divis�vel por 2 (resto da divis�o zero) retorna "par"
  # caso contr�rio, retorna "�mpar"
  if (x %% 2 == 0) {
    return("par")
  } else {
    return("impar")
  }
  
}

par_ou_impar(9)

par_ou_impar2<- function(x){
  for (i in 1:length(x)) { # la�o de repeti��o 
    print(par_ou_impar(x[i]))
  }
}
teste <- c(9,3,6,10)
par_ou_impar2(teste)

par_ou_impar3 <- function(x,y,z){
  cat("valor x ",par_ou_impar(x),"\n ")
  cat("valor y ",par_ou_impar(y),"\n ")
  cat("valor z ",par_ou_impar(z),"\n ")
}

par_ou_impar3(8,10,7)



