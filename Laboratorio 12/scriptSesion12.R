# Librerias
library(tidyverse)
library(moderndive)

# 1. Simular una normal
calif <- rnorm(n = 100000, 
               mean = 5, 
               sd = 1.5)

calif2 <- rnorm(n = 1e5, 
                mean = 3, 
                sd = 0.9)

calif3 <- rnorm(n = 1e5, 
                mean = 7, 
                sd = 1.5)

# Lo guardamos en una tibble
calificaciones <- tibble(datos = calif, datos2 = calif2, datos3 = calif3) 
# %>%
#   pivot_longer(cols = c(datos, datos2, datos3))

# Grafica
ggplot(calificaciones, 
       aes(x = datos)) + 
  geom_density() + 
  geom_vline(xintercept = 7.46)


# qnorm - El valor de las calificaciones para el cual tenemos x% de las observaciones

# EL valor para el cual tenemos el 5% mas reprobado. 
qnorm(p = 0.05, 
      mean = 5, 
      sd = 1.5)
# La calificacion con el 5% mas bajo es igual a 2.52

# El valor de el 5% mas alto
qnorm(p = 0.95, 
      mean = 5, 
      sd = 1.5)

# El 5% mas alto se encuentra con una calificacion por encima de 7.46

# pnorm, dada la calificacion (el valor de la variable aleatoria) vamos a sacar la proporcion o probabilidad de obtener ese valor o uno mas bajo. 
pnorm(q = 7.46728, 
      mean = 5, 
      sd = 1.5)

# DISTRIBUCION MUESTRAL.
# La distribucion muestral es la distribucion que resulta de considerar todas las muestras posibles que pueden ser tomadas de una poblacion.


# Porcentaje GATOS QUE PREFIEREN WHISKHAS
gatos <- c(rep(1,900000),rep(0,100000)) %>% sample()



gatos<- tibble(gusta_whiskas = gatos)
(
  muestra <- gatos %>% 
  rep_sample_n(size = 1000, 
               replace = T, 
               reps = 10000) %>% 
  summarise(promedio_gatos_gusta_whiskas = mean(gusta_whiskas$gusta)) 
  
  )

# grafica de los promedios de los gatos que les gusta whiskas
muestra %>% 
  ggplot(aes(x = promedio_gatos_gusta_whiskas)) + 
  geom_density() 

# Promedio de la poblacion
mean(muestra$promedio_gatos_gusta_whiskas)
# 0.8998608
+ 1.96 ee
- 1.96 ee

# Error estandar
ee <- sd(muestra$promedio_gatos_gusta_whiskas)
# 0.00949439

# desvestaandar/raizdelnumerodeobservaciones
1 desv estandar - 68.3% de los datos
2 desv estandar - 95.4% de los datos
3 desv estandar - 99.7% de los datos

1.96 desv estandar - 95% de los datos

lim_sup <- 0.8998608 + 1.96*ee
lim_inf <- 0.8998608 - 1.96*ee

# El porcentaje de gatos a los que les gusta whiskas 
# dado mi ejercicio de entrevistar a 1000 gatos es el siguiente> 
0.89998-lim_inf

89.998% de los datos les gusta whiskas +- 1.8% al 95% de confianza.







