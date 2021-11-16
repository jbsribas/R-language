library(randomForest)
library(readr)
library(ggplot2)


winequality_red <- read_delim("C:/Users/jessi/Desktop/Treinamento R/aula 8/winequality-red.csv", 
                              ";", escape_double = FALSE, trim_ws = TRUE)
View(winequality_red)

head(winequality_red,3)
dim(winequality_red)

winequality_red$quality<- as.factor(winequality_red$quality)
class(winequality_red$quality)

names(winequality_red)

names(winequality_red) <- c("fixed_acidity","volatile_acidity",    
"citric_acid","residual_sugar","chlorides",           
"free_sulfur_dioxide","total_sulfur_dioxide",
"density","pH","sulphates","alcohol","quality") 

modelo <- randomForest(quality ~ 
                      residual_sugar + 
                      fixed_acidity +
                      density+ ph +
                      citric_acid+
                      chlorides+
                      alcohol,
                      data = winequality_red,
                      prox = TRUE)
modelo

#matriz de confusão
MC <- table(predict(modelo),
            winequality_red$quality)

#matriz de confusão % erro
prop.table(MC)

#acuracia de 39%


g1 <- ggplot(winequality_red) +
      aes(x = alcohol, y = citric_acid, colour = quality) +
      geom_point(shape = "circle", 
      size = 1.5) +
      scale_color_hue(direction = 1) +
      theme_minimal()


g2<- ggplot(winequality_red) +
     aes(x = fixed_acidity, y = citric_acid, colour = quality, size = alcohol) +
     geom_point(shape = "circle") +
     scale_color_hue(direction = 1) +
     theme_minimal()

