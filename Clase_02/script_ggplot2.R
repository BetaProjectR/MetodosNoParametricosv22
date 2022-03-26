# ----------------------------------------------------------
# Clase 02 - Script EDA y ggplot2
# Dr. José Gallardo Matus
# 21 marzo 2022
# OCE 313 - Técnicas de análisis no paramétricos
# ----------------------------------------------------------

# habilitar librería ggplot2
library(ggplot2)

# Explore set de datos CO2 con función head(), summary(), str()


# Intento de gráfica con función ggplot.
# La gráfica queda vacía pues falta indicar el tipo de gráfica que deseamos
ggplot(CO2, aes(uptake))

# Histrograma con ggplot.
ggplot(CO2, aes(uptake))+
 geom_histogram()

# Histrograma con ggplot y colores
ggplot(CO2, aes(uptake))+
  geom_histogram(color="white", fill="blue")

# Reducimos numero de barras con bin (Defaults = 30)
ggplot(CO2, aes(uptake))+
  geom_histogram(color="white", fill="blue", bins = 10)

# Agregamos titulo y nombre de los ejes
ggplot(CO2, aes(uptake))+
  geom_histogram(color="white", fill="blue", bins = 10)+
  labs(title="Histograma", x="Consumo de CO2", 
       y="Frecuencia")

# Gráfica con dos ejes y tratamiento pero incompleta
ggplot(CO2, aes(x=Treatment, y=uptake))

# Gráfica de boxplot
ggplot(CO2, aes(x=Treatment, y=uptake))+
geom_boxplot(color="blue")

# Simular variable con distribución binomial negativa
library(MASS)
set.seed(123)
# n = 1000 peces
# mu = 4 (Parásitos por pez)
# theta = 30 (número arbitrario para estimar la varianza)
Datos <- data.frame(rnegbin(500, 10, 5))
colnames(Datos) <- "parasitos"

# Realice un histograma y un boxplot con el set de datos simulados de parásitos

# Simular variable con distribución Bernoulli
rvpm <- data.frame(rbinom(500, size=1, prob=0.06)) 
table(rvpm)
colnames(rvpm) <- "Muertos"

# Realice un histograma con el set de datos simulados de parásitos
