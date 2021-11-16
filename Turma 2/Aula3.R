# Aula 3 - laço de repetição

###################################
for(x in 1:5) print(x)


vet <- seq(1:100)

soma <- 0
for(a in 1:100){
  soma = soma+vet[a]
  print(soma)
}

#fibonacci
f<- 0
print(f)
for(a in 1:10){
  f <- f+a
  print(f)
}


# While
x <- 1
while(x <=10){
  print(x)
  x <- x+1
}

#repeat

y <- 0
repeat{
  print(" executando dentro do repeat")
  print(y)
  y <- y+1
  print(y)
  if(y >= 15) 
     break
}

any(is.na(Cor_dos_olhos))  




