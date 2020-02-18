###############################################
# Prueba de apertura de archivo *.sav (SPSS)  #
# Jorge Juvenal Campos Ferreira               #
###############################################

# 0. Checar que version tienen de R
version # En mi caso es la 3.6.0 (la mas moderna es la 3.6.2)

# 1. Librerias
library(pacman)
p_load("tidyverse", "haven", foreign)

# 2. Abrir la base de datos
svy <- haven::read_sav("survey.sav")
svy2 <- foreign::read.spss("survey.sav", to.data.frame = TRUE)
