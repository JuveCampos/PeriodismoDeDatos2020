# Problema 2. 

# Descripción ---- 

# En la Universidad Autónoma del Estado de Morelos se quiere conocer el porcentaje de participación de los jóvenes de 18 años en las elecciones intermedias locales. 

# Un investigador piensa que los jóvenes de esa edad no les interesa votar por sus diputados locales o federales, mientras que otro investigador tiene la hipótesis de que, a esa edad, estan tan emocionados de tener credencial que votan en gran proporción y en grandes cantidades. 

# De las mil secciones electorales que hay en el estado, se consiguió una muestra aleatoria de 200 secciones, obteniendo información de la Lista Nominal (LN, total de jóvenes de 18 años en la sección) y la cantidad de estos que sí votó (SV). Obtenga el porcentaje de participación promedio y el intervalo de confianza de dicha estimación al 99%. ¿Qué podemos concluir de todos los jóvenes morelenses de 18 años a partir de esta muestra? 

# Librerias ----
library(tidyverse)

# Datos ----
datos <- readr::read_csv("Bases de datos/datosSeccionElectoralMorelos.csv") 

# Pista: La participación se calcula como el cociente (la división) de los que si votaron entre el total de los que hay (LN)

# Generamos la variable de participación
datos <- datos %>% 
  mutate(part = SV/LN)

# Exploramos 
head(datos)

# Sacamos la media de la participación: 
media <- mean(datos$part)
media

# Obtenemos los intervalos de confianza: 
# 1. Calculamos el error estándar: 
n <- nrow(datos)
ee <- sd(datos$part)/sqrt(n)

# Obtenemos los limites superior e inferior
# del intervalo de confianza: 
lim_sup <- media + qnorm(p = 0.995, 
                         mean = 0, 
                         sd = 1)*ee

lim_inf <- media - qnorm(p = 0.005, 
                         mean = 0, 
                         sd = 1, 
                         lower.tail = FALSE)*ee

# Conclusión de la estimación

# La media de participación de los jóvenes morelenses de 18 
# años es del 54.8% +- 1.358% dentro de un intervalo de 
# confianza al 99% que va desde el 51.33 al 54.8% al 99%
# de confianza. 

