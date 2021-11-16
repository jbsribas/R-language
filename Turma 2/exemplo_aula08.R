
library(readr)
abalone <- read_csv("C:/Users/jessi/Downloads/abalone.data",  
                    col_names = FALSE)
View(abalone)

names(abalone) <- c("Sex", "Length", "Diameter", "Height", 
                    "Whole", "Shucked", "Viscera","Shell", "Rings")

head(abalone, 3)
sapply(abalone, class)
abalone$Sex <- as.factor(abalone$Sex) # converte para fator

classificacao <- randomForest(Sex ~ Length+ Diameter+ Height+
                                Shell+ Whole + Shucked + Viscera, 
                              data = abalone, 
                               ntree = 500)


  

