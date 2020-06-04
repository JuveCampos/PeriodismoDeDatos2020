# Problema 3. 

# Enunciado del problema ----

# El gobierno, preocupado por la calificación y el mal desempeño obtenido tras las ultimas pruebas estandarizadas a jóvenes de preparatoria deciden llevar a cabo una política pública entre jóvenes de tercer año de bachillerato. Para evitar que estos tengan que trabajar, y  garantizar que tienen el material necesario para estudiar, se les   proporciona a un grupo aleatorio de jóvenes una transferencia  monetaria para que cubran sus gastos diarios, de $20,000 pesos semestrales, mientras que a otro grupo de ellos, no se les da nada (grupo de control)

# Se evalúa a estos dos grupos a partir de un examen estandarizado (igual para todos) para ver si el apoyo económico tiene un rendimiento sobre su desempeño académico, obteniendo las calificaciones de cada uno.

# Obtenga la calificación promedio por cada grupo y su respectivo intervalo de confianza al 95% (tiene que obtener dos intervalos de confianza). Discuta, a partir de este resultado, si hay alguna diferencia entre ambos grupos. 

# Datos ---- 
calificaciones <- readr::read_csv("Bases de datos/calificacionesExamenTransferencia.csv") 

