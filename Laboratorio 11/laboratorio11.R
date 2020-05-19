# Probabilidad
library(tidyverse)

# Bernoulli (moneda) 
bern <- sample(x = c("A", "S"), 
               size = 1000000, 
               replace = T,
               prob = c(0.5, 0.5))

bern <- tibble(valores = bern)

# Explorar eventos
table(bern)

#Proporciones
prop.table(table(bern))

bern %>% 
  group_by(valores) %>% 
  count() %>% 
  ggplot(aes(x = valores, y = n/1000000)) + 
  geom_col()


# Binomial (hijas ninias en 10 asaltos)
# Experimento bernoulli necesita definir un exito.
asaltos <- rbinom(n = 100000, # Veces que repetimos el experimento
                 size = 7,    # 
                 prob = 0.6)  # Probabilidad de exito

asaltos <- tibble(datos = asaltos)

plt <- asaltos %>% 
  group_by(datos) %>% 
  count() %>% 
  ggplot(aes(x = factor(datos), y = n/100000)) + 
  geom_col(fill = "purple") 

plotly::ggplotly(plt)
