setwd("/home/kleber/ML/BussinesAnalytics/cap02/R")
getwd()


#Exercicio
set.seed(140)
dados <- rnorm(n=10000, mean = 55, sd = 4.5)
dataset <- data.frame(dados)
colnames(dataset) <- "medida"

summary(dataset$medida)
skewness(dataset$medida)
kurtosis(dataset$medida)
hist(dataset$medida)
# View(dataset)


# Moda
table(as.vector((dataset$medida)))
table(as.vector(round(dataset$medida)))
moda <-table(as.vector(round(dataset$medida)))
names(moda)[moda == max(moda)]


install.packages("psych")
library(psych)

describe(dados)

library(ggplot2)
# Plot
ggplot(dataset, aes(x = dataset$medida), binwidth = 20) + 
  geom_histogram(aes(y = ..density..), fill = 'red', alpha = 0.5) + 
  geom_density(colour = 'blue') + xlab(expression(bold('Dados de Exemplo'))) + 
  ylab(expression(bold('Densidade')))
























