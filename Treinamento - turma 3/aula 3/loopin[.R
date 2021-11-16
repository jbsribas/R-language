#laço de repetição vilgo looping
# três estruturas de looping 
# com sintaxes diferentes


# indicado quando deseja executar todas as iterações
#
for (j in 1:6) {
  print(j)
}

v <- c("vermelho","amarelo","azul","violeta")
for(i in 1:length(v)){
  print(v[i])
}

data("iris")
for(i in 1:length(iris$Species)){
  print(iris$Species[i])
  soma = iris$Sepal.Length[i] + iris$Sepal.Width[i]
  print(soma)
}


for(p in 1:length(pokemon_df$Name)){
  print(pokemon_df$Name[p])
}


########################################
#while
cont <- 6 
# criar a variavel de controle fora do laço

while(cont < 10){
  print(cont)
  cont <- cont+1 
  # estou incrementando 1 manualmente
}

# looping infinito
# porque o criterio de parada nunca vai ser 
#alcançado
cont <- 1
while(cont<10){
  print(cont)
}


while(TRUE){
  notas <- scan()
  media <- mean(notas)
  print("sua media final é")
  print(media)s
  
  if(media > 0){
    print("Você parou o programa")
    break # força a parada de um looping
  }
}


# sem criterio de para if/else e break o repeat
#é um looping infinito
repeat{
  print("O Rato roeu a roupa do rei de roma")
}


repeat{
  print("nome: ")
  nome <- readLines(n=1)
  print("Digite as 4 notas:")
  notas <- scan()
  media<- mean(notas)
  print("A media final é")
  print(media)
  print("deseja continuar a execução (s/n)")
  resp <- readLines(n=1)
  if (resp == "N" || resp=="n"){
    break
  }
}








