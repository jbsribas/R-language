#vetor contendo o nome dos amigos 
#voc� vai percorer esse vetor e exibindo o 
#nome dos amigos um por vez utilizando 
#for, while e repeat

amigos <- c("Fernanda", "Thais", "Isabela", "Rafael",
            "Samuel", "Rai", "Julia", "Amanda")

# exibi��o com for
for (k in 1:length(amigos)) {
  print(k)
  print(amigos[k])
}

#while

a <- 1
 while(length(amigos)>= a) {
   print(amigos[a])
   a <- a+1
 }


a <- 1
repeat{
  print(amigos[a])
  a <- a+1
  if(length(amigos) == a){
    break
  }
}

a <- 1
repeat{
  if(length(amigos) == a){
    break
  }
  print(amigos[a])
  a <- a+1

}


#Utilizar o data frame olhos 
#e no campo idade voc� vai calcular a media 
#de idade de todos os cadastrados

# arquivo da aula 2 dataframe_r.R
mediaIdade <- mean(dfOlhos$idade )

#Utilizando o data frame olhos voc� vai 
#percorrer o campo cor dos olhos e exibir somente
#o indice que contenha o valor azul

for (i in 1:length(dfOlhos$cor_dos_olhos)) {
    if(dfOlhos$cor_dos_olhos[i]=="Azul")
      print("Azul")
}

# todo indice de estrutura de dados inicia com 1

#Utilizando o data frame familia, 
#voc� vai percorrer o parentesco e 
#quando encontrar o valor pai ira mostrar 
#o nome e escrever parab�ns pelo seu dia 
#ou feliz aniversario

familia_df <- data.frame("Nome" = c("Teresa",
                                    "Jose",
                                    "Eric",
                                    "Robson"),
                         "Parentesco"= c("M�e",
                                         "Pai",
                                         "Irm�o",
                                         "Irm�o"))
  
for(h in 1:length(familia_df$Nome)){
  if(familia_df$Parentesco[h]=="Pai"){
    print(familia_df$Nome[h])
    print("feliz anivers�rio!!!")
  }
    
}


