nome <- "Jessica"
idade <- 32
endereco <- "R. lalla, 86, ledle"
cidade <- "Guarulhos"
estado <- "SP"
# vetor = comando/ fun��o para criar c()
# os valores sepados entre , est�o agrupados 
#nessa variavel
#vetor agrupa valores do Mesmo tipo

fruta <- c("ma�a","mel�o","mam�o","melancia")
dados <- c(nome, idade, endereco, 
           cidade, estado)
numeros <- c(9,7,3,5)
# criar vetor com numeros em sequencia
vetNum <- seq(0,11)
vetNum
#criar um vetor com numeros em sequencia 
# com o intervalo de 2 em dois
vetNum2 <- seq(1,10,2)
vetNum2

vetNum3 <- seq(0,10, 2)
vetNum3

#repeti��o dos valores numericos
# primeiro coloca o intervalo numerico,
#depois coloca a quantidade de repeti��es
vetRep <- rep(vetNum2,3)


###########################################
#matrizes comando matrix  
#matriz por numeros de linhas
m1 <- matrix(numeros, nrow = 2) 

#matriz por numero de coluna
m2 <- matrix(c(6,3.5,7,0,8.2,3), ncol = 2)

#por padr�o uma matriz preenche seus 
#valores por coluna, caso queira mudar utilize 
#o parametro byrow
#matriz atribuidos os valores por linha 
m3 <- matrix(numeros,nrow = 2,byrow = TRUE)

#exemplo de opera��o com matrizes
mult = m1 * m3
mult # para visualizar
print(mult) # para visualizar
det(mult)
det(m1)
soma = m1+m3

#dataframe data.frame

df <- data.frame(fruta,numeros)
View(df)

nomeF <- c("Teresa", "Jose", "Eric","Robson")
titulo <- c("M�e", "Pai", "Irm�o", "Irm�o")
df_familia <- data.frame(titulo, nomeF)
View(df_familia)
