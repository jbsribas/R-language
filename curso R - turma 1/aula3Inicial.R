
# compara��o
# > maior que   >= maior ou igual
#< menor que    <= menor igual 
# == igualdade   != diferen�a

# Operadores l�gicos
# ! not ( n�o)
# | or (ou) ||
# & and (e) &&
#xor(x,y)
#isTRUE(X)

#amostra aleat�ria
a <- c( sample(1:15,15,replace=FALSE) ) # replace � onde voc� indica se a amostra deve
                                      #ser feita com reposi��o (TRUE) ou sem reposi��o (FALSE). 

# distribui��o normal aleat�ria
b <-  rnorm(20, mean=0, sd=1)
temp2<-rnorm(20,8,10)


hist(b)
hist(temp2)
#runif (Gerar dados aleat�rios com distribui��o uniforme)
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




