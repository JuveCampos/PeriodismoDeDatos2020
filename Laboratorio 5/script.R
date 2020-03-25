# Cargamos las liberias: 
library(sjlabelled) 
library(sjmisc)
library(tidyverse)


# Leer base de datos
Ad <- read_csv("https://raw.githubusercontent.com/JuveCampos/presentaciones/master/PdD2020/Admisiones.csv")

# Poner etiquetas
Ad$Admitido <- set_label(Ad$Admitido, "Condicion de admision al programa")
Ad$Sexo <- set_label(Ad$Sexo, "Sexo del aspirante")
Ad$Departamento <- set_label(Ad$Departamento, "Departamento Academico")

# Etiquetar los valores de las columnas
Ad <- Ad %>% 
  mutate(Admitido = rec(Admitido, rec = "1=1 [Admitido]; 2=2 [No admitido]"), 
         Sexo = rec(Sexo, rec = "1=1 [Hombre]; 2=2 [Mujer]"))

# Etiquetas
get_labels(Ad$Sexo)
get_labels(Ad$Admitido)
frq(Ad$Admitido)

# Que deberiamos hacer para ver si hay discriminacion por genero? 
flat_table(Ad, Admitido, Sexo, margin = "row")
