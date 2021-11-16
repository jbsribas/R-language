## meu primeiro R script 
# comentário de uma linha vai ser ignorado peo compilador
## colocar uma explicação

a <- 6
b <- 8.6
c <- 'texto'
d <- "aqui também é texto" 
# + - * /

print(a+b)
#Comando / função para saber o tipo de variavel
class(c)
class(d)
class(a)
class(b)
class(TRUE)

#print(a+d) não permite essa operação pois 
#temos um numero e um texto

print(a**2) # potência ou a elevado a 2

# funções
print("a raiz quadrada de 9 é:")
print(sqrt(9))
abs(-11) #absoluto ou módulo 
# log 
log(10) 
log(10, base=2)# log na base 2
log10(10)

exp(5) # função exponencial

# valores em radianos não em graus
sin(1) # seno
cos(1) # cosseno
tan(1) #tangente

#chamada de biblioteca
library(dplyr)
# instalar pacote via linha de comando
#install.packages("car")

library(readr)
iris_1_ <- read_csv("C:/Users/jessi/Desktop/Treinamento R/iris(1).data", 
                    col_names = FALSE)
View(iris_1_)
print(iris_1_)

# colocar nome na primeira linha do data frame

# função ou comando names() para visualizar os
# titulos dos campos de um data frame
# quando passamos os nomes como parametros podemos
#renomear

names(iris_1_) <- c("sepal_length","sepal_width",
                    'petal_length',
                    "petal_width","class")


#analise exploratória básica 
# estatistica descritiva
summary(iris_1_) 
# media
# mediana
# primeiro quartil
# terceiro quartil
# valor minimo e valor maximo

# função/ comando para calcular a média
mean(iris_1_$sepal_length)
mean(iris_1_$sepal_width)



