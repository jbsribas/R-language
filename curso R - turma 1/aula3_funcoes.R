par_ou_impar <- function(x){
  
  # verifica se o número é um decimal comparando o tamanho da diferença de x e round(x)
  # se for decimal retorna NA (pois par e ímpar não fazem sentido para decimais)
  if (abs(x - round(x)) > 1e-7) 
      return(NA)
  
  
  # se o número for divisível por 2 (resto da divisão zero) retorna "par"
  # caso contrário, retorna "ímpar"
  if (x %% 2 == 0) {
    return("par")
  } else {
    return("impar")
  }
  
}

par_ou_impar(9)

par_ou_impar2<- function(x){
  for (i in 1:length(x)) { # laço de repetição 
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



