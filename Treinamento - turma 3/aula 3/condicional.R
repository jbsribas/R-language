# se condição então

# se condição então / senão

x <- 10
y <- 5
# estrutura de condição simples 
#somente if
if(x == 3){
  print("estou dentro do If, logo x = 3")
}

if(x <= y){
  print("X é menor ou igual a y")
  soma = x+y
  print("a soma de x e y é ")
  soma
  
}else{
  print(" x é maior que y")
}


##################################
#x maior que y
#vai multiplica x por y e mostrar o resultado
if(x > y){
  mult <- x * y
  print("O valor de x * y é")
  mult
}else{
  print("Estou no else não calculo")
}


####  operadores relacionais e operadores logicos
# fazer as comparações com operadores relacionais
# igualdade ==
# diferente ou não igual !=
# maior que >
# menor que <
# maior igual >=
# menor igual <=

#operadores logicos
# & - operador e (and) para ser verdadeiro ambas as 
#      condições devem ser verdadeiras
# | - operador ou (or) desde que uma das condições 
#     seja verdadeiro vai entrar no bloco de instrução
# ! - not ou não faz a inversão de valor o que é
#     verdadeiro fica falso e o que é falso fica
#     verdadeiro.

#and & &&
if (x==10 & y==3){
  print("Ambas as condições são verdadeiras")
}else{
  print("Deu resultado falso, tô no else")
}

#
if (x==10 & y==5){
  print("Ambas as condições são verdadeiras")
}else{
  print("Deu resultado falso, tô no else")
}

# or | ||
if (x==10 || y==3){
  print("Uma das condições é verdadeira")
}else{
  print("Deu resultado falso, tô no else")
}

if (x==11 || y==3){
  print("Uma das condições é verdadeira")
}else{
  print("Ambas as condições são falsas")
}

# not !
x = TRUE
if(!x){
  print(x)
}else{
  print(x)
}

if(!FALSE){
  print("Eu mudei não sou mais falso")
}else{
  print("eu sou falso")
}


####################################
#ifelse(condição, verdadeiro, falso)
#sempre tem três parametros
#condição
#programação para verdadeiro
#programação para falso

ifelse(x==10,"valor verdadeiro","valor falso")

ifelse(x==10 && y==3,"valor verdadeiro", "valor falso")

ifelse(is.character(x),"X é uma string", class(x))

ifelse(is.data.frame(y),"y é um data frame", class(y))





