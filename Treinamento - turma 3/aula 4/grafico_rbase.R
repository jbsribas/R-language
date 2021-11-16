library(car)
library(dplyr)

# criando arquivo 
carros <- mtcars
View(carros)

plot(carros$wt,carros$mpg,
     main = "Gráfico de dispersão",
     xlab = "Peso do carro",
     ylab = "Milhas por galão", 
     pch = 3, col="red")



plot(carros$wt,carros$mpg,
       main = "Gráfico de dispersão",
       xlab = "Peso do carro",
       ylab = "Milhas por galão", 
       pch = 5, col="green")


#####################################
#grafico de linhas 
x <- seq(0,20)

plot(x, sin(x),type = "l",
     xlab = "valor de X",
     ylab = "Valor de seno",
     col = "red")

plot(x, sin(x),type = "l",
     xlab = "valor de X",
     ylab = "seno e cosseno",
     col = "red")
lines(x,cos(x), col="blue")

#################################
#grafico de barras verticais

#contar a quantidade de carros
numCarros <- table(carros$gear)

barplot(main="Gráfico de barras verificais",
        xlab="Engrenagens",
        ylab="Qtde Carros",
        numCarros, col = "blue")

# com uma cor para cada barra
barplot(main="Gráfico de barras verificais",
        xlab="Engrenagens",
        ylab="Qtde Carros",
        numCarros, 
        col = c("green","yellow","pink"))


# grafico de barras horizontal
barplot(main="Gráfico de barras horizontal",
        xlab="Engrenagens",
        ylab="Qtde Carros",
        numCarros, 
        col = c("green","yellow","pink"),
        horiz = TRUE)


# grafico de pizza
numCarros <- table(carros$gear)

# transformei em factor e depois
#peguei os niveis para utilizar como
#legenda
nomes <- levels(as.factor(carros$gear))
porc <- round(numCarros/sum(numCarros)*100,2)
rotulo = paste(nomes,"(",porc,"%",")",
               sep=" ")

pie(numCarros,main="Grafico de pizza",
    col= c("red", "blue", "yellow"),
    labels = rotulo)

data(iris)
# histograma
hist(iris$Sepal.Length, 
     main = "Sepal length")

# separar a tela de plotagem 
# em duas linhas e duas colunas 
par(mfrow=c(2,2))
for(i in 1:4){
  hist(iris[,i],
       main= names(iris)[i])
}

# boxplot
boxplot(iris, main = "base iris",
        col= c("pink", "light green",
               "grey", "light blue",
               "brown"))









