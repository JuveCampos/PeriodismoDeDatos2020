# Script de referencia del laboratorio del año pasado: 
# https://github.com/JuveCampos/laboMetodosCuantitativosIntermedios2019/blob/master/Sesión%202.%20Regresion%20Lineal/Notebook.ipynb

# Bases de datos.
library(tidyverse)

# Datos. 
bloodPressure <- tibble(
  sistolicBloodPressure = c(132,143,153,162,154,168,137,149,159,128,166),
  ageInYears = c(52,59,67,73,64,74,54,61,65,46,72),
  weightInPounds = c(173,184,194,211,196,220,188,188,207,167,217))
# Los datos provienen del archivo blodPressure.csv, incluido tambien en esta carpeta. 

# Generamos el modelo:
fmla <- sistolicBloodPressure ~ ageInYears + weightInPounds
class(fmla) # El objeto generado es un objeto formula

# Funcion de regresion lineal 
modelo <- lm(formula = fmla, data = bloodPressure)
class(modelo)

# Ver más características del modelo
summary(modelo) # Visualizar todas las propiedades del objeto lm

