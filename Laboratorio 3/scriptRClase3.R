library(sjmisc)
library(sjlabelled)
library(haven)

data(efc)

names(efc)
glimpse(efc)
frq(efc)

# Obtener los valores de las etiquetas
get_labels(efc$e15relat)
get_label(efc$e15relat)

# Sacar estadisticas descriptivas
frq(efc$c161sex)
frq(efc$e15relat)

# Buscar variables dentro de la base de datos
find_var(efc, pattern = "dependency|sex", out = "index", regex = T)

# Tablas cruzadas
flat_table(efc, e15relat, c161sex, margin = "col")
flat_table(efc, e15relat, c161sex, margin = "row")

efc$neg_c_7
get_label(efc$neg_c_7)
summary(efc$neg_c_7)

# minimo a 9 : impacto bajo 
# 10 a 12 : impacto moderado 
# 13 a maximo : impacto severo 

efc$carga <- rec(efc$neg_c_7,
                 rec = c("min:9 = 1 [impacto bajo];
                         10:12=2[impacto moderado]; 
                         13:max=3 [impacto severo]; 
                         else = NA"), 
                 var.label = "Carga subjetiva", 
                 as.num = TRUE)

class(efc$carga)

