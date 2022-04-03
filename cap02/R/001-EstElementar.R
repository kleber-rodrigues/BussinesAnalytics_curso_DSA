setwd("/home/kleber/ML/BussinesAnalytics/cap02/R")
getwd()


# install.packages("mlbench")
library(mlbench)

data("PimaIndiansDiabetes")
View(PimaIndiansDiabetes)

dataset <- PimaIndiansDiabetes
View(dataset)


?dim
dim(dataset)
str(dataset)
summary(dataset)
summary(dataset$age)


mean(dataset$age)
mean(dataset$age, na.rm = TRUE)
is.na(dataset$age)

median(dataset$age)

quantile(dataset$age)
quantile(dataset$age, c(.32, .57, .98))

range(dataset$age)[2] - range(dataset$age)[1]

IQR(dataset$age)


var(dataset$age)

sd(dataset$age)

cov(dataset$age, dataset$glucose)
cor(dataset$age, dataset$glucose)

correlacoes <- cor(dataset[,1:8])
print(correlacoes)


library(corrplot)
corrplot(correlacoes, method = "circle")

library(e1071)

skewness(dataset$age)
hist(dataset$age)

kurtosis(dataset$age)


#Exercicio
dados <- rnorm(n=10000, mean = 55, sd = 4.5)
View(dados)








