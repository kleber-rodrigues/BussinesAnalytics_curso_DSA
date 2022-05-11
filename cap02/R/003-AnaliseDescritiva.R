setwd("/home/kleber/ML/BussinesAnalytics/cap02/R")
getwd()

carros <- read.csv("dados/carros.csv", stringsAsFactors = FALSE)

str(carros)
names(carros) <-c('Ano', 'Modelo', 'Preco', 'Kilometragem', 'Cor', 'Transmissao')
View(carros)

#Explorando variáveis numéricas
summary(carros$Ano)
str(carros)
carros$Ano <- as.character(carros$Ano)
summary(carros[c("Preco", "Kilometragem")])

mean(carros$Preco)
median(carros$Preco)
range(carros$Preco)
diff(range(carros$Preco))
IQR(carros$Preco)
quantile(carros$Preco)
quantile(carros$Preco, seq(from = 0, to = 1, by = 0.20))
quantile(carros$Preco, probs = c(0.01, 0.99))


boxplot(carros$Preco, main = "Boxplot Preços", ylab="Preço (R$)")
boxplot(carros$Kilometragem, main = "Boxplot Kilometragem", ylab="Kilometragem (KM)")

hist(carros$Preco, main = "Histogram Preços", ylab="Preço (R$)")
hist(carros$Kilometragem, main = "Histogram Kilometragem", ylab="Kilometragem (KM)")

library(e1071)
kurtosis(carros$Preco)
kurtosis((carros$Kilometragem))

skewness(carros$Preco)
skewness((carros$Kilometragem))

mean(carros$Preco)
var(carros$Preco)
sd(carros$Preco)

mean(carros$Kilometragem)
var(carros$Kilometragem)
sd(carros$Kilometragem)


#Bivariado

plot(x = carros$Kilometragem, y = carros$Preco,
     main = "Scatterplot Kilometragem x Preço",
     xlab = "Kilometragem (Km)",
     ylab = "Preço (R$)")


cor(carros$Kilometragem, carros$Preco)

aggregate(carros$Preco ~ carros$Ano, FUN = mean, data = carros)


# Explorando variáveis categóricas
str(carros)

table(carros$Ano)
table(carros$Modelo)
table(carros$Cor)


model_table <- table(carros$Modelo)
prop.table(model_table)


color_table <- table(carros$Cor)
color_pct <- prop.table(color_table) * 100
round(color_pct, digits = 1)


#Resumo gráfico e entre as variáveis categóricas
library(ggplot2)
  
ggplot()










