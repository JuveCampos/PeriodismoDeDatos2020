# Problema 1 #

# Problema: ----

# El fin de semana del 30 de junio del 2020 un grupo de ciudadanos inconformes salió a las calles a protestar en contra de las medidas del actual gobierno. La marcha fue realizada en caravanas de automóviles en diversas ciudades de la república, acción que parece ser que no fue del agrado de las redes sociales. 

# La maestría en Periodismo del CIDE organiza una encuesta para saber cual es la opinión de los ciudadanos sobre la marcha a una muestra aleatoria de la población mexicana, con reemplazo, a 1,000 habitantes de la república, registrando 1 si la opinión fue favorable y 0 si fue desfavorable.

# Calcule la proporción de la población mexicana que está a favor de la marcha y su respectivo intervalo de confianza al 95%.

# Datos ----
datos <- readr::read_csv("Bases de datos/apoyoMarchaEncuesta.csv")

# Exploramos los datos: 
head(datos)

# Obtenemos la media
media <- 
  mean(datos$respuestas)

# Calculamos el Error Estandar
ee <- sd(datos$respuestas)/sqrt(1000)

# Limite superior e inferior
lim_sup <- media + ee*qnorm(p = 0.975, mean = 0, sd = 1)
lim_inf <- media - ee*qnorm(p = 0.975, mean = 0, sd = 1)

# Conclusiones: 
# Mi estimacion del porcentaje de personas en Mexico
# Que esta a favor de la marcha en automovil es de 
# el 34% +- 1.5% con un limite superior de 36.9% y un 
# limite inferior del 31% con un nivel de confianza del 95%



