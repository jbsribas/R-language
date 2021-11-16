# vetores de condição lógica
cria_x <- TRUE
cria_y <- FALSE

# só executa se cria_x = TRUE
if (cria_x) {
  x <- 1
}

# só executa se cria_y = TRUE
if (cria_y) {
  y <- 1
}

# note que x foi criado 
exists("a")
## [1] TRUE

# note que y não foi criado
exists("y")
## [1] FALSE


numero <- 1

if (numero == 1) {
  cat("o numero é igual a 1")
} else {
  cat("o numero não é igual a 1")
}
## o numero é igual a 1

numero <- 10

if (numero == 1) {
  cat("o numero é igual a 1")
} else if (numero == 2) {
  cat("o numero é igual a 2")
} else {
  cat("o numero não é igual nem a 1 nem a 2")
}
## o numero não é igual nem a 1 nem a 2


#cat = print oficial do R
