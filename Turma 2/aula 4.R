# aula 4
#graficos com Rbase

#Biliotecas
library(car)
library(dplyr)

# inclus�o script do que contem o df_olhos
#apontando para o dirett�roio do arquivo
setwd("C:/Users/jessi/Documents/Impacta Treinamentos/Turma 2")
#incluindo o script
source("dataframe_r.R")

#gr�fico de dispers�o

carros <- mtcars
View(carros)
# plotagem simples x,y
plot(carros$wt,carros$mpg)

#plotagem com altera��o nos parametros
#titulo -> main
#alterar o eixo x -> xlab
#alterar o eixo 4 -> ylab

plot(carros$wt, carros$mpg, main = "Gr�fico de Disper��o",
      xlab = "Peso do Carro", ylab = "Milhas por gal�o")

# alterando a forma (pch) e cor dos dados (col)  
plot(carros$wt, carros$mpg, main = "Gr�fico de Disper��o",
     xlab = "Peso do Carro", ylab = "Milhas por gal�o",
      pch=4, col= 6)

# Gr�fico de de barras de verticais
numero_carros <- table(carros$gear)

#comando de grafico de barras barplot
barplot(numero_carros, 
        main = "Grafico de barras verificais",
        xlab = "Engrenagens",
        ylab = "quantidade de 'carro'",
        col = "blue")

# cada coluna com uma cor
barplot(numero_carros, 
        main = "Grafico de barras verificais",
        xlab = "Engrenagens",
        ylab = "quantidade de carro",
        col = c("blue", "green","pink"))

# grafico de barras horizantal 
# parametro horiz = true
barplot(numero_carros, 
        main = "Grafico de barras Horizontal",
        xlab = "Engrenagens",
        ylab = "quantidade de carro",
        col = c("blue", "green","pink"),
        horiz = TRUE)

#gr�fico de pizza 
Contagem <- table(df_olhos$Cor_dos_Olhos)
rotulo <- df_olhos$Cor_dos_Olhos
perc <- round(Contagem/sum(Contagem)*100,2)
legenda <- paste(rotulo,"(",perc,"%",")", sep = " ")

pie(Contagem, labels = legenda,
    main = "Grafico de Pizza",
    col = c("red", "blue", "Yellow"))
legend("top", rotulo[1:3], 
       fill = c("red", "blue", "Yellow"), 
       ncol = 3,
       xpd = TRUE, bty = "n")

#biblioteca para paletas de cores no R
library(RColorBrewer)
cores <- brewer.pal(8, "Dark2")

# grafico boxplot
data("iris")
View(iris)

boxplot(iris, 
        col =c("light blue","pink","brown","light green","red"),
        main = " Boxplot data set Iris")

#box plot com as cors atrinuidas pela biblioteca RColorBrewer
boxplot(iris[, 1:4],
        col= cores,
        main = "Boxplot Iris sem a classe")

# Grafico de linhas 
# usa o mesmo comando do grafico d epontos ou dispers�o
#por�m o parametro type deve ser indicadp com l (L)

x<- seq(1:10)
plot(x, sin(x),
     main="duas linhas",
     ylab="",
     type="l",
     col="blue")
#incluir uma nova linha dentro do grafico
lines(x,cos(x), col="red")
#incluindo a legenda 
legend("topleft",
       c("sin(x)","cos(x)"),
       fill=c("blue","red"))

# histograma Rbase
hist(iris$Sepal.Length,
     col="orange",
     main= "Tamanho da S�pala Iris",
     xlab= "S�pala",
     ylab = "frequ�ncia")


#Caso queira ver o histograma de todas as colunas 
#da base �ris de uma vez,
#ser� necess�rio a utiliza��o da fun��o "par(mfrow= c(linha,coluna))", 

par(mfrow=c(2,2))
for(i in 1:4) {
  hist(iris[,i], main=names(iris)[i])
}
iris$Species
# graficos com o ggplot2
library(ggplot2)
#dispers�o
ggplot(iris, aes(Sepal.Length,Sepal.Width,
                 colour = as.factor(Species) )) +
  geom_point()+ 
  xlab(" Tamanho da sepala")+
  ylab("Largura da sepala")+
  ggtitle("Iris Sepala - dispers�o ou pontos")
  

#barras
ggplot(iris, aes(x = Sepal.Length,
                 colour = as.factor(Species) )) +
  geom_bar()+ 
  xlab(" Tamanho da sepala")+
  ylab("Largura da sepala")+
  ggtitle("Iris Sepala - barras")


ggplot(iris, aes(Sepal.Length,iris$Sepal.Width,
                 colour = as.factor(Species) )) +
  geom_col()


#linhas
ggplot(iris, aes(Sepal.Length,Sepal.Width,
                 colour = as.factor(Species) )) +
  geom_line()+ geom_point()
  xlab(" Tamanho da sepala")+
  ylab("Largura da sepala")+
  ggtitle("Iris Sepala - dispers�o ou pontos")

#o historigrama n�o precisa do eixo Y
  ggplot(iris, aes(Sepal.Length)) +
    geom_histogram()
  
  