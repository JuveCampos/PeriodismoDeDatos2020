###################
# Script sesion 7 #
###################

# Librerias
library(tidyverse)

# Datos 
# Ecuacion Y = 150 + 20X 
# Donde X puede ir de _ hasta __ 
# Donde Y va de ___ a ____

X = 0:20
Y = 150 + 50*X 

# Hacemos la grafica
tibble(educ = X, ing = Y) %>% 
  ggplot(aes(x = educ, y = ing)) + 
  geom_line(linetype = "dashed") + 
  geom_vline(xintercept = 0) + 
  geom_hline(yintercept = 0) + 
  theme_bw()

# Generamos una poblacion con estos datos
educacion = sample(X, size = 1000, replace = T)
ingreso = 150 + 50*educacion

tibble(educ = educacion, ing = ingreso) %>% 
  ggplot(aes(x = educ, y = ingreso)) + 
  geom_jitter() + 
  geom_vline(xintercept = 0) + 
  geom_hline(yintercept = 0) + 
  theme_bw()

error <- rnorm(n = 1000, mean = 0, sd = 100)

# Como se distribuye este error
error %>% 
  as_tibble() %>% 
  ggplot(aes(value)) + geom_density()

ingreso <- ingreso + error

tibble(educ = educacion, ing = ingreso) %>% 
  ggplot(aes(x = educ, y = ingreso)) + 
  geom_point() + 
  geom_line(data = tibble(educ = X, ing = Y), 
            aes(x = educ, y = ing), 
            linetype = "dashed", col = "red") + 
  geom_vline(xintercept = 0) + 
  geom_hline(yintercept = 0) + 
  theme_bw()
