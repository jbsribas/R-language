#exercicio dplyr
################################
library(dplyr)

##############################
preto <- df_olhos %>% filter(Cor_dos_Olhos=="Preto")

azul <- df_olhos %>% filter(Cor_dos_Olhos=="Azul") %>% 
         #summarise(mediaIdade=mean(Idade)) 
         mutate(medidaI = mean(Idade))




