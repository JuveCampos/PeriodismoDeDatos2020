## Sesion 10 ##

# Sesgo de variable omitida. 
## Es un ERROR DE ESPECIFICACION: Estos errores provienen de especificar 
## mal las variables que le metemos a un modelo. 
## Puede ser que le metamos variables repetidas, variables 
## diferentes que aporten informacion repetida o que nos hagan
## falta variables. 

## En la presente sesion vamos a revisar que sucede cuando 
## nos faltan variables explicativas. 

## Definiciones: 

## 1. Revisar que es la regresion lineal. 

## 1.5 Revisar qué es un modelo. 
# ··· Un modelo científico es una representación abstracta de 
# un fenómeno, un sistema o un proceso con el fin de analizar, 
# describir, explicar y simular (predecir) esos mismos fenómenos
# o procesos. 

## 2. Regresión lineal univariada.
#··· Cuando solo se usa una variable explicativa

## 3. Regresión lineal multivariada. 
#··· Cuando se usan múltiples variables explicativas

## 4. Revisar que es un sesgo. 
#··· Un sesgo es la diferencia entre nuestros calculos y 
#··· el valor verdadero. 

## 4. R_2
#··· El R2 es una medida del ajuste de nuestro modelo a los datos
#··· un R2 = 1 implica que el modelo se ajusta perfectamente a los datos
#... mientras que un R2 = 0 nos habla de un modelo que tiene nulo poder predictivo. 

## 5. funcion lm(), summary()

# Paquetes ----
library(pacman)
p_load(tidyverse, 
       readr, 
       ggplot2)

# Setup ----
Sys.setlocale("LC_ALL", "es_ES.UTF-8") 
options(scipen=999)

# Base de datos ----
pitufi <- read_csv("pitufi.csv") %>% 
  select(-X1)

head(pitufi)
# La base de datos contiene la cantidad de pitufi fresas
## que puede cosechar un pitufo, en base a la ingesta 
## de vitaminas y al sexo del pitufo...

# Preguntas ----
# 1. Que tenia la base de datos de los pitufos?
# 2. como le metemos mas variables a la regresion? 

# Regresion lineal univariada
mod1_1 <- lm(data = pitufi, 
           formula = p.fresas ~ p.vitam)

mod1_2 <- lm(data = pitufi, 
             formula = p.fresas ~ p.sexo)

mod2 <- lm(data = pitufi, 
             formula = p.fresas ~ p.vitam +  p.sexo)

summary(mod1_1)
summary(mod1_2)
summary(mod2)

#Modelo de dos variables explicativas.
p.fresas = 2.20 + 2.48*p.vitam + 1.44*p.sexo # R2= 0.96
# Modelo de las vitaminas
p.fresas =  2.77 + 2.50*p.vitam # R2 = 0.94
# Modelo del sexo del pitufo
p.fresas = 26.79 + 1.95*p.sexo # R2 = 0.03

# Sesgo de variable omitida
# La diferencia entre el efecto de una variable entre un modelo que considera mayor informacion conparado con uno que considera una menor cantidad de informacion. 

# Preguntas 2 ----
# 1. Como interpretamos el modelo? 
# 2. Que significa que el valor del intercepto? 
# 3. Que significa el valor de p.sexo? 
# 4. Que significa la R2?
# 5. Que significan las estrellitas? 

