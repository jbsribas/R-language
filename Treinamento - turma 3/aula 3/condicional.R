# se condi��o ent�o

# se condi��o ent�o / sen�o

x <- 10
y <- 5
# estrutura de condi��o simples 
#somente if
if(x == 3){
  print("estou dentro do If, logo x = 3")
}

if(x <= y){
  print("X � menor ou igual a y")
  soma = x+y
  print("a soma de x e y � ")
  soma
  
}else{
  print(" x � maior que y")
}


##################################
#x maior que y
#vai multiplica x por y e mostrar o resultado
if(x > y){
  mult <- x * y
  print("O valor de x * y �")
  mult
}else{
  print("Estou no else n�o calculo")
}


####  operadores relacionais e operadores logicos
# fazer as compara��es com operadores relacionais
# igualdade ==
# diferente ou n�o igual !=
# maior que >
# menor que <
# maior igual >=
# menor igual <=

#operadores logicos
# & - operador e (and) para ser verdadeiro ambas as 
#      condi��es devem ser verdadeiras
# | - operador ou (or) desde que uma das condi��es 
#     seja verdadeiro vai entrar no bloco de instru��o
# ! - not ou n�o faz a invers�o de valor o que �
#     verdadeiro fica falso e o que � falso fica
#     verdadeiro.

#and & &&
if (x==10 & y==3){
  print("Ambas as condi��es s�o verdadeiras")
}else{
  print("Deu resultado falso, t� no else")
}

#
if (x==10 & y==5){
  print("Ambas as condi��es s�o verdadeiras")
}else{
  print("Deu resultado falso, t� no else")
}

# or | ||
if (x==10 || y==3){
  print("Uma das condi��es � verdadeira")
}else{
  print("Deu resultado falso, t� no else")
}

if (x==11 || y==3){
  print("Uma das condi��es � verdadeira")
}else{
  print("Ambas as condi��es s�o falsas")
}

# not !
x = TRUE
if(!x){
  print(x)
}else{
  print(x)
}

if(!FALSE){
  print("Eu mudei n�o sou mais falso")
}else{
  print("eu sou falso")
}


####################################
#ifelse(condi��o, verdadeiro, falso)
#sempre tem tr�s parametros
#condi��o
#programa��o para verdadeiro
#programa��o para falso

ifelse(x==10,"valor verdadeiro","valor falso")

ifelse(x==10 && y==3,"valor verdadeiro", "valor falso")

ifelse(is.character(x),"X � uma string", class(x))

ifelse(is.data.frame(y),"y � um data frame", class(y))





