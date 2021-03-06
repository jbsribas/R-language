library(car)
library(dplyr)

carros <- mtcars


plot(carros$wt, carros$mpg,
     main = "Grafico de dispers�o",
     xlab = "Pedo do carro", 
     ylab = "Milhas por gal�o", 
     pch=19 )


# Venda de sorvete em rela��o a temperatura
vendasSorvete <- data.frame(bolasSorvete = c(200, 300, 400, 500, 600),   # Quantidade de sorvetes
                            Temperatura = c(20,  25,  27,  30,  32))    # Temperatura

# Nomes da colunas
colnames(vendasSorvete) <- c("Qtd.Sorvete","Temperatura")

# Visualiza data.frame
vendasSorvete
# Cria gr�fico de pontos
plot(vendasSorvete)

# Cria gr�fico de pontos
plot(x = vendasSorvete$Temperatura,  # Eixo X com a temperatura
     y = vendasSorvete$Qtd.Sorvete,
     pch=3, col = "red")  
# Eixo Y com a quantidade de sorvetes


lines(x = vendasSorvete$Temperatura,
      y = vendasSorvete$Qtd.Sorvete,
      col = "red")


# Venda de sorvetes que havia sido estimada
estimativaSorvete <- c(150, 290, 370, 410, 503)

# Adiciona linha entre os pontos
lines(x = vendasSorvete$Temperatura,
      y = estimativaSorvete,
      col = "blue")
