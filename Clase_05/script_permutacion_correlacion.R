# ----------------------------------------------------------
# Clase 05 - Permutacion y correlación
# Dr. José Gallardo Matus
# 12 abril 2022
# OCE 313 - Técnicas de análisis no paramétricos
# ----------------------------------------------------------

# Habilita librerías
library(gtools) # Para calcular permutaciones

library(dplyr) # Para manipular datos

library(ggplot2) # Para hacer gráficos

library(tidyr) # Para manipular datos

# Calcular permutaciones sin repetición CASO 1
# ¿Cuántas permutaciones existen para P4?
# P4 = {a,b,c,d}
factorial(4)
# ¿Cuales son las permutaciones posibles para P5?
help(permutations)
permutations(4,4,letters[1:4], repeats.allowed = FALSE)


# EJERCICIO 1
# Dado un experimento de correlación entre 5 pares de observaciones
# de abundancia de moluscos y profundidad.
# ¿Cuántas permutaciones/correlaciones son posibles para este conjunto de datos?
# R5 = {1,2,3,4,5}
# Use factorial()
# ¿Cuales son las permutaciones posibles para R5?
# Use permutations()

# EJERCICIO 2
# Dado el siguiente resultado de un experimento de correlación entre 5 pares de observaciones
# de abundancia de moluscos y profundidad.
# Abundancia = 475,600,500,400,450
# Profundidad = 10,20,30,40,50
# a) Grafique la relación entre las variables usando ggplot2.
# b) Elabore una hipótesis para este estudio.
# c) Determine el coeficiente de correlación de spearman.
# c) Realice una prueba de correlación no paramétrica.
# d) Interprete el coeficiente de correlación obtenido y si acepta o rechaza su hipótesis.
X <- c(475,600,500,400,450)
Y <- c(10,20,30,40,50)
cor.test(X,Y, method = "spearman", alternative = "two.sided") 

# EJERCICIO 3
# Con el objetivo de determinar la ocurrencia de la acidificacion del océano.
# se ha realizado un crucero al océano Artico en el cual de midió el pH y la alcalinidad.
# a) Grafique la relación entre las variables usando ggplot2.
# b) Elabore una hipótesis para este estudio.
# c) Determine el coeficiente de correlación de spearman.
# c) Realice una prueba de correlación no paramétrica.
# d) Interprete el coeficiente de correlación obtenido y si acepta o rechaza su hipótesis.

