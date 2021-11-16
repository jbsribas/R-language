#install.packages(stringr)

library(stringr)


funcverifica <- function(o){
  if(is.numeric(o)){
    calc <- o - as.integer(o)  # pegando o valor inteiro do numero
     if(calc == 0){            #e subtraindo por ele se for 0 é inteiro se sobrar é real
       result <- "inteiro"
     }else{
       result <- "real"
     }
    return(cat("O valor ", o , " é numerico ", result))
  }else if(is.character(o)){
    count <- str_length(o)
    return(cat("o valor ", o, " é carater de tamanho ", count))
  }else{
    return("valor não reconhecido")
  }
  
}

funcverifica(6)



