

##### importação
library(readr)
netflix_titles <- read_csv("C:/Users/jessi/Downloads/archive/netflix_titles.csv")
View(netflix_titles)


summary(netflix_titles)


library(readr)
abalone <- read_csv("C:/Users/jessi/Downloads/abalone.data", 
                    col_names = FALSE)
View(abalone)

nome <- c("Sex", "Length", "Diameter", "Height", "Whole weight", "Shucked weigh", "Viscera weight", "Shell weight", "Rings" )

names(abalone) <- nome

summary(abalone)


abalanoRandom <- randomForest(Sex)
