# Problema 2. 

# Descripción ---- 

# En la Universidad Autónoma del Estado de Morelos se quiere conocer el porcentaje de participación de los jóvenes de 18 años en las elecciones intermedias locales. 

# Un investigador piensa que los jóvenes de esa edad no les interesa votar por sus diputados locales o federales, mientras que otro investigador tiene la hipótesis de que, a esa edad, estan tan emocionados de tener credencial que votan en gran proporción y en grandes cantidades. 

# De las mil secciones electorales que hay en el estado, se consiguió una muestra aleatoria de 200 secciones, obteniendo información de la Lista Nominal (LN, total de jóvenes de 18 años en la sección) y la cantidad de estos que sí votó (SV). Obtenga el porcentaje de participación promedio y el intervalo de confianza de dicha estimación al 99%. ¿Qué podemos concluir de todos los jóvenes morelenses de 18 años a partir de esta muestra? 

# Datos ----
datos <- readr::read_csv("Bases de datos/datosSeccionElectoralMorelos.csv") 

# Pista: La participación se calcula como el cociente (la división) de los que si votaron entre el total de los que hay (LN)

