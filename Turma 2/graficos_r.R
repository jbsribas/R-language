
library(RColorBrewer)


# inclusão script do que contem o df_olhos
#apontando para o dirett´roio do arquivo
setwd("C:/Users/jessi/Documents/Impacta Treinamentos/Turma 2")
#incluindo o script
source("dataframe_r.R")

olhos <- table(df_olhos$Cor_dos_Olhos)
rotulo <- df_olhos$Cor_dos_Olhos[1:3]
cores <- c("blue", "green","pink")
# grafico de barras verticais
barplot(olhos, 
        main = "Cor dos olhos",
        xlab = "Cor dos olhos",
        ylab = "quantidade",
        col = cores)
legend("topleft", rotulo , 
       fill = cores,
       ncol = 3)

# grafico de barras horizontal
barplot(olhos, 
        main = "Cor dos olhos",
        xlab = "Cor dos olhos",
        ylab = "quantidade",
        col = c("blue", "green","pink"),
        horiz = TRUE)

#gráfico de pizza 
Contagem <- table(df_olhos$Nome)
rotulo <- df_olhos$Nome
perc <- round(Contagem/sum(Contagem)*100,2)
legenda <- paste(rotulo,"(",perc,"%",")", sep = " ")

coresBasicas <- c(1:8)
pie(Contagem, labels = legenda,
    main = "Nome cor dos olhos",
    col = coresBasicas)

