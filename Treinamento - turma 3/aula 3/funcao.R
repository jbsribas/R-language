verifica <- function(var1,var2){
  #fun��o para verificar o tipo de dados
  # de duas variaveis/objetos
  #ao mesmo tempo
  return(c(class(var1),class(var2)))
  #Fun��o com retorno
}

teste <- function(){
  # fun��o sem retorno / void
  print("meu gato esta arranhando as coisas")
  print("quero brigar com ele mas n�o posso")
}

############################################

verifica("lalala",92)



teste()



# exercicios fun��o
#fa�a uma fun��o que calcule a area do quadrado
#a = lado* lado ou lado**2
areaQ <- function(lado){
  area <- lado * lado 
  #area = lado ** 2
  return(area)
}

#fa�a uma fun��o para calcular a area do triagulo
#area = base*h /2
areaT <- function(base, altura){
  area <- base*altura/2
  return(area)
}


#fa�a uma fun��o para calcular a area do retangulo
#area = base*altura
areaR <- function(base,altura){
  area <- base* altura
  return(area)
}

#fa�a uma fun��o para calcular a area do cirulo
#area = pi * raio**2

areaC <- function(raio){
  area <- pi * raio**2
  return(round(area,2))
}
############################################
calcArea <- function(valor1,forma){
  area = -1
  if(forma =="Q" || forma =="q"){
      area = valor1 * valor1
  }
  if(forma=="C" || forma == "c"){
    area = pi * valor1**2
  }
  return(area)
}

############################################3

areaQ(2)
areaT(3,1.7)
areaR(4,2.3)
areaC(2.1)

calcArea(3,"t")

# fazer uma fun��o para calcar a area do retangulo e 
#reiangulo nos formatos (ideia) do calcArea


