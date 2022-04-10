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
help(permutations)
permutations(4,4,letters[1:4], repeats.allowed = FALSE)
factorial(4)

# Permutaciones con repetición CASO 2
# ¿Cuántas permutaciones existen para una clave de 4 dígitos?
help(expand.grid)
Candado_4 <- expand.grid(rep(list(0:9), 4))
dim(Candado_4)
10^4

# Permutaciones con repetición - CASO 3
# ¿Cuántas palabras diferentes se pueden formar con las letras de la palabra GATA? Ej. {TAGA, AGAT, GTAA …}
# Si, G = 1 vez; T = 1 vez y A = 2 veces , entonces

factorial(4) / (factorial(1)*factorial(1)*factorial(2)) 


# EJERCICIO 1
# ¿Cuántas permutaciones existen para P5?
# P5 = {a,b,c,d,e}
# Use factorial()
# ¿Cuales son las permutaciones posibles para P5?
# Use permutations()


# EJERCICIO 2
# Dado un experimento de correlacion entre 5 pares de observaciones.
# ¿Cuántas permutaciones existen para el ranking de P5?
# P5 = {1,2,3,4,5}
# Use factorial()
# ¿Cuales son las permutaciones posibles para P5?
# Use permutations()

# EJERCICIO 6
# Dado un experimento de correlacion entre 5 pares de observaciones.
# ¿Cuántas permutaciones existen para el ranking de P5?
# P5 = {1,2,3,4,5}
# Use factorial()
# ¿Cuales son las permutaciones posibles para P5?
# Use permutations()