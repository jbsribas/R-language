for (i in 1:10) {
  
  print(" la�o de repeti��o for ")
  
}

for (k in 1:20) {
      print(k)
}


for(d in 1:15){
  
  cat("essa � o indice ou variavel de controle", d, "\n")
}

# o la�o de repeti��o while necessita a declara��o da variavel fora do looping

q <- 1
while (q <= 10) {
  print(q)
  #if(q == 18)
    # break # for�a a saida do looping sem precisar precorrer toda a 
           #instru��o, assim que a ocorrencia do if for satisfeita
  
  q <- q+1 # contador ou estrutura de controle variavel <- variavel +1
  
}

# repeat  necessita do break e da verifica��o para parar se n�o entra em looping eterno
w <- 1
repeat {
  print (w)
  w <- w+1
  if(w > 15)
     break
}