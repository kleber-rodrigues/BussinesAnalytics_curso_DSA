setwd("/home/kleber/ML/BussinesAnalytics/cap02/R")
getwd()



# Exemplo 1


help(Binomial)
?dbinom

dbinom(6, size = 12, prob = 0.2)
dbinom(6, size = 12, prob = 0.2) * 100


x <- dbinom(0:12, size = 12, prob = 0.2)
barplot(x, names.arg = 0:12, space = 0)

pbinom(5, size = 12, prob = 0.2)


x <- pbinom(1:12, size = 12, prob = 0.2)
barplot(x, names.arg = 1:12, space = 0)
x



#Exemplo 2
?dpois
dpois(x = 2, lambda = 3) + dpois(x = 3, lambda = 3) + dpois(x = 4, lambda = 3)


ppois(q = 4, lambda = 3)
ppois(q = 4, lambda = 3, lower.tail = TRUE)
ppois(q = 4, lambda = 3, lower.tail = FALSE)
ppois(q = 4, lambda = 3, lower.tail = TRUE) - ppois(q = 1, lambda = 3, lower.tail = TRUE)




x <- ppois(q = 0:10, lambda = 3, lower.tail = TRUE)
barplot(x, names.arg = 0:10, space = 0)


options(scipen = 999, digits = 2)


eventos <- 0:10

probs <- dpois(x = eventos, lambda = 3)
prob_acumulada <- ppois(q = eventos, lambda = 3, lower.tail = TRUE)

df <- data.frame(eventos, probs, prob_acumulada)
df


# Sem probabilidade acumulada
ggplot(df, aes(x = factor(eventos), y = probs)) +
  geom_col() +
  geom_text(aes(label = round(probs,2), y = probs + 0.01), position = position_dodge(0.9), size = 3, vjust = 0) +
  labs(title = "Distribuição Poisson Para Calcular a Probabilidade de Vendas Por Semana", 
       x = "Evento (Número de Vendas)", 
       y = "Probabilidade") 

# Com probabilidade acumulada
ggplot(df, aes(x = factor(eventos), y = probs)) +
  geom_col() +
  geom_text(aes(label = round(probs,2), y = probs + 0.01), position = position_dodge(0.9), size = 3, vjust = 0) +
  labs(title = "Distribuição Poisson Para Calcular a Probabilidade de Vendas Por Semana", 
       x = "Evento (Número de Vendas)", 
       y = "Probabilidade") +
  geom_line(data = df, aes(x = eventos, y = prob_acumulada))


























