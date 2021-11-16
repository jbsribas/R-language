for (i in 1:10) {
  
  print(" laço de repetição for ")
  
}

for (k in 1:20) {
      print(k)
}


for(d in 1:15){
  
  cat("essa é o indice ou variavel de controle", d, "\n")
}

# o laço de repetição while necessita a declaração da variavel fora do looping

q <- 1
while (q <= 10) {
  print(q)
  #if(q == 18)
    # break # força a saida do looping sem precisar precorrer toda a 
           #instrução, assim que a ocorrencia do if for satisfeita
  
  q <- q+1 # contador ou estrutura de controle variavel <- variavel +1
  
}

# repeat  necessita do break e da verificação para parar se não entra em looping eterno
w <- 1
repeat {
  print (w)
  w <- w+1
  if(w > 15)
     break
}