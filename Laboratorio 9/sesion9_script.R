#...............................#
# SESION 9 DEL LABORATORIO   ---- 
#...............................#

# Librerias ----
library(tidyverse)
library(readxl)

# Bases de datos ----
list.files("datos")

# datos de presion sanguinea
presion <- read_xls("datos/bloodPresureData.xls")

# Datos de Tasa de Mortalidad por cada 100,000 habitantes en funcion del acceso a salud publica
salud <- read_xls("datos/health.xls")

# Calificaciones finales en base a las calificaciones de parciales 
scores <- read_xls("datos/testScoresGeneralPsychology.xls")

# Precios de casas en LA, California 
casasLA <- read_csv("datos/LAhomes.csv")


# Ejercicios ----

# Para cada una de las bases de datos anteriores, 
## responda las siguientes preguntas: 

# 1. ¿Que variables tiene cada base de datos? 

# 2. ¿Qué pregunta de investigación podríamos responder 
## con esta base de datos?

# 3. ¿Cuales serían las variables explicativas (X) y las 
## variables dependientes o variables a explicar (Y)? ¿Son numericas o 
## categóricas? 

# 4. Calcule el modelo de regresión lineal a partir de los datos, 
## usando las variables explicativas X (una o todas).

# 5. ¿Cual es el valor del intercepto? ¿Cual es la tasa de cambio de 
## las variables explicativas? ¿Como interpretaria estos valores? 

# 6. ¿Cual es el valor de R^2 (R-cuadrada) del modelo? Como 
## interpretar este valor en este modelo? 

###########
# presion #
###########


# 1. ¿Que variables tiene cada base de datos? 

# 2. ¿Qué pregunta de investigación podríamos responder 
## con esta base de datos?

# 3. ¿Cuales serían las variables explicativas (X) y las 
## variables dependientes o variables a explicar (Y)? ¿Son numericas o 
## categóricas? 

# 4. Calcule el modelo de regresión lineal a partir de los datos, 
## usando las variables explicativas X (una o todas).

# 5. ¿Cual es el valor del intercepto? ¿Cual es la tasa de cambio de 
## las variables explicativas? ¿Como interpretaria estos valores? 

# 6. ¿Cual es el valor de R^2 (R-cuadrada) del modelo? Como 
## interpretar este valor en este modelo? 


#########
# salud #
#########


# 1. ¿Que variables tiene cada base de datos? 

# 2. ¿Qué pregunta de investigación podríamos responder 
## con esta base de datos?

# 3. ¿Cuales serían las variables explicativas (X) y las 
## variables dependientes o variables a explicar (Y)? ¿Son numericas o 
## categóricas? 

# 4. Calcule el modelo de regresión lineal a partir de los datos, 
## usando las variables explicativas X (una o todas).

# 5. ¿Cual es el valor del intercepto? ¿Cual es la tasa de cambio de 
## las variables explicativas? ¿Como interpretaria estos valores? 

# 6. ¿Cual es el valor de R^2 (R-cuadrada) del modelo? Como 
## interpretar este valor en este modelo? 


##########
# scores #
##########


# 1. ¿Que variables tiene cada base de datos? 

# 2. ¿Qué pregunta de investigación podríamos responder 
## con esta base de datos?

# 3. ¿Cuales serían las variables explicativas (X) y las 
## variables dependientes o variables a explicar (Y)? ¿Son numericas o 
## categóricas? 

# 4. Calcule el modelo de regresión lineal a partir de los datos, 
## usando las variables explicativas X (una o todas).

# 5. ¿Cual es el valor del intercepto? ¿Cual es la tasa de cambio de 
## las variables explicativas? ¿Como interpretaria estos valores? 

# 6. ¿Cual es el valor de R^2 (R-cuadrada) del modelo? Como 
## interpretar este valor en este modelo? 

###########
# casasLA #
###########


# 1. ¿Que variables tiene cada base de datos? 

# 2. ¿Qué pregunta de investigación podríamos responder 
## con esta base de datos?

# 3. ¿Cuales serían las variables explicativas (X) y las 
## variables dependientes o variables a explicar (Y)? ¿Son numericas o 
## categóricas? 

# 4. Calcule el modelo de regresión lineal a partir de los datos, 
## usando las variables explicativas X (una o todas).

# 5. ¿Cual es el valor del intercepto? ¿Cual es la tasa de cambio de 
## las variables explicativas? ¿Como interpretaria estos valores? 

# 6. ¿Cual es el valor de R^2 (R-cuadrada) del modelo? Como 
## interpretar este valor en este modelo? 