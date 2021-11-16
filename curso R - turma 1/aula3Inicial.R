
# comparação
# > maior que   >= maior ou igual
#< menor que    <= menor igual 
# == igualdade   != diferença

# Operadores lógicos
# ! not ( não)
# | or (ou) ||
# & and (e) &&
#xor(x,y)
#isTRUE(X)

#amostra aleatória
a <- c( sample(1:15,15,replace=FALSE) ) # replace é onde você indica se a amostra deve
                                      #ser feita com reposição (TRUE) ou sem reposição (FALSE). 

# distribuição normal aleatória
b <-  rnorm(20, mean=0, sd=1)
temp2<-rnorm(20,8,10)


hist(b)
hist(temp2)
#runif (Gerar dados aleatórios com distribuição uniforme)
c<-  runif(20,1,100)
hist(c)

# which - retona o indice

which(a >= 8)

help(which)

?which
  

#maneira correta 
a[which(a<=8)]



# ifelse
ifelse(a<5,"menor que 5","maior = que 5")




