# vetores de condi��o l�gica
cria_x <- TRUE
cria_y <- FALSE

# s� executa se cria_x = TRUE
if (cria_x) {
  x <- 1
}

# s� executa se cria_y = TRUE
if (cria_y) {
  y <- 1
}

# note que x foi criado 
exists("a")
## [1] TRUE

# note que y n�o foi criado
exists("y")
## [1] FALSE


numero <- 1

if (numero == 1) {
  cat("o numero � igual a 1")
} else {
  cat("o numero n�o � igual a 1")
}
## o numero � igual a 1

numero <- 10

if (numero == 1) {
  cat("o numero � igual a 1")
} else if (numero == 2) {
  cat("o numero � igual a 2")
} else {
  cat("o numero n�o � igual nem a 1 nem a 2")
}
## o numero n�o � igual nem a 1 nem a 2


#cat = print oficial do R
