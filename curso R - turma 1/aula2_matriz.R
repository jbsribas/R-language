

1. Pacote plyr
2. Pacote ggplot2
3. Pacote outliers
4. Pacote forecast

vet1 <- c(1,2,3,4)
vet2 <- c("melancia","abacate","abobora","melão")
vet3 <- c("a",1,"b",2)

print(vet2)

vetorNum <- seq(1,10)
print(vetorNum)

vetornum2 <- seq(1,10,2)
print(vetornum2)

vetornum3 <-rep(vetorNum,2)
print(vetornum3)

#######matriz####################

matriz1 <- matrix(1:20, nrow = 10)
print(matriz1)

matriz2 <- matrix(seq(13,24), nrow = 5)
print(matriz2)

elementos <- c("a","b","c","d",1,2,3,4)
matriz3 <- matrix(elementos, nrow = 2)
print(matriz3)


matriz <- matrix(seq(1,12), nrow= 4)

matrizt <- t(matriz)

matrizdet = det(novamatrix)

novamatrix = matrix(seq(1,4), nrow = 2)


somaM <- matriz + matriz
substM <- somaM - matriz

multiM <- 3 * matriz

multim2 <- somaM * matriz

el <- c(3,6,9,12)
m1 <- matrix(el, 2)

el <- c(2, -6 , -9, 13)
m2 <- matrix(el, 2)

minversa <- solve(m1,m2)

minversa2 <- solve(m1)%*%m1

