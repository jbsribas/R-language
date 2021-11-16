#Script aula 2
#Sobre estrutura de dados e manipulação de dados utilizando 
#pacote dplyr
#comparação If/else
###########################
# desenvolvido por: Jessica Ribas
# 
#####################
#pacotes utilizados

library(dplyr)
#install.packages(tidyr)
#library(tidyr)
####################
#inclusões de scripts

source("dataframe_r.R") # nome do arquivo e extenção
#source("minhas_funcoes.R")

##########################
#comando seq()

vet1 <- seq(1,10)

seq(1,10,2)

seq(0,10,2)

#comando rep

vet2 <- rep(vet1, 4)

 rep(3,3)
 
 
m1 <- matrix(1:20, 10)
m2 <- matrix(1:20, 10, byrow = TRUE )


#factor
dado <- c("vermelho", "branco", "Laranja", "Preto","Vermelho", "branco")
nivel <- c(1,2,3,4)
f <- factor(nivel)
levels(f)<- dado

fat <- factor(dado[1:4])
levels(fat)< - nivel

#ou
cor_carro <- c(1,2,3,4)
cor_carro
cor_carro <- factor(cor_carro)

cor_carro
levels(cor_carro)<- c("vermelho", "branco", "laranja", "Preto", "vermelho", "Branco")
cor_carro

data(iris)
class(iris$Species)
levels(iris$Species) 
levels(iris$Species)<- c(1,2,3)
levels(iris$Species)<- c("setosa","versicolor", "virginica" )
View(iris)


#lista Vazia
l <- list()
length(l)

#lista com 6 elementos\posições
l1 <- list(vet1,vet2,m1,2*5,f,iris)
#comparação de acesso ao elemento entre as estruturas de dados
l1[[6]] #elemento 
m1[1][1] #linha, coluna
vet[1] #linha
#tamanho da lista l1
length(l1)


#exemplo apostila
direcao <- c("automatico","manual","manual", 
             "automatico", "manual", "automatico")

codigo_carro <- c(1,2,3,4,4,2)
pesquisa_carro <- list(codigo = codigo_carro, 
                       cor = cor_carro, tipo = direcao)

pesquisa_carro$codigo
pesquisa_carro$cor
pesquisa_carro$tipo
pesquisa_carro[[1]]

# data frame

df_exemplo <- data.frame("nome" = c("Joana", "Maria", "João", "Pedro", "José"),
                          "idade" = c(21,25,28,34,18),
                         "Faculdade" = c("Engenharia", "Engenharia", "Direito",
                                         "Enfermagem","Engenharia"))

View(df_exemplo)

df_exemplo


###### Manipulação de dados dplyr

#filtro
resultado <- df_exemplo %>% filter(Faculdade == "Direito") 
#summarise
r1 <- df_exemplo %>% summarise(media_idade = mean(idade))

#select
df_exemplo %>% select(nome, idade)
df_exemplo %>% select(nome,Faculdade)

#filtro com mais de uma opção
df_exemplo %>% filter(Faculdade %in% c("Direito","Enfermagem"))

#& = e | = ou
df_exemplo %>% filter(idade >=28 )
df_exemplo %>% filter(idade >=28 & Faculdade=="Direito") #e 
df_exemplo %>% filter(idade >=28 | Faculdade=="Enfermagem") #ou
df_exemplo %>% filter(idade <=28 & Faculdade != "Engenharia") # != diferença

result <- df_exemplo %>% filter(Faculdade == "Engenharia") %>%
                         mutate(estado="cansado",
                                idadeMedia = mean(idade),
                                 porNada ="Lalalalal")  

# agrupar e contar
contar <-  df_exemplo %>% group_by(Faculdade) %>%
                          tally()

#comparações
x <- 6
y <- 10
if (x >= y){
   print("Verdadeiro")
}else{
  print("Falso")
}

if(1==1){
  print("if com mais de uma linha de instrução mesmo sem o else precisa de chaves")
  print(" você sabe que é verdade")
  print(" então não se assuste")
}

a= 10
b=3
ifelse(a>=b,"verdadeiro","falso") # esse é igual ao excel
# ifelse(condição, retorno verdadeiro, retorno falso)

# && = e para ser verdadeiro toda a sentença as duas ou mais 
#verificações devem ser todas verdeiras
# ||  = ou desde que uma verifiação seja verdeira toda a resposta vai ser 
#verdadeira
# ! = não 
# Comparação
# diferente !=
# igual ==
# > ; >= ;  < ; <=; 
if(a>b || x>y){ #ou
   print("verdadeiro")
}else{
  print("falso")
}

if(a>b && x>y){ # e 
  print("verdadeiro")
}else{
  print("Falso")
}

if(! a>b){ # a negação 
  print("verdadeiro")
}else{
  print("Falso")
}

# criar sua própria função no R para realziar tarefas especificas
# use o comando function - de funções genericas
# coloque os parametros( our argumentos) necessarios dentro dos parentese,
# as variaveis de uma função não são globais, ou seja não ficam na aba Enviroment
#elas são locais acessadas somente pela função.
verMaior = function(a,b){
  if(a>b){
    return("a > b - verdadeiro")
  }else{
    return("a <= b - falso")
  }
}


verMaior2 = function(a,b){
  y=0
  if(a>b){
    x <- ("a > b - verdadeiro")
  }else{
    x <- ("a <= b - falso")
  }
  return(c(x,y))
}

retfunc <- verMaior2(6,3)
func <- verMaior(6,3)

