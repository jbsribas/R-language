library(utils)
library(dplyr)

arquivo = read.csv("C:/Users/jessi/Documents/Impacta Treinamentos/Economist_pensions.csv",
          header = FALSE)

View(arquivo)
arquivo[1,] 


arquivo <- arquivo %>% slice(2:n()) # removi a primeira linha

arquivo <- arquivo %>% slice(1:35) # removendo a sugeira das linhas abaixo da 35

arquivo[] <- lapply(arquivo, gsub, pattern=';', replacement='') # remove os ; no final dos dados
