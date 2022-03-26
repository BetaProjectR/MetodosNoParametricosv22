# ----------------------------------------------------------
# Clase 01 - Programación con R
# Dr. José Gallardo
# 11 marzo 2022
# OCE 313 - Técnicas de análisis no paramétricos
# ----------------------------------------------------------

# R funciona con comando matemáticos
29+29
29*29
29==29

# Error en R
29 + diez

# Version R
version
R.version.string

# ¿Como citar R?
citation()

# En que directorio estoy
getwd()

# Listar librerías o packages disponibles en mi entorno de trabajo
search()

# Listar archivos en el directorio actual
list.files()

# Crear un objeto tipo vector estudio de abundancia nematodos de la meioinfauna
# https://doi.org/10.1590/S1679-87592019023006701

Estacion <- c("Otoño", "Invierno", "Primavera","Verano")
Sitio <- as.factor(c("S1","S2","S3","S4"))
Densidad <- c(1000, NA, 0, 3000)

# Listar objetos 
ls()

# Características o atributos de un objeto
class(Estacion)
length(Estacion)
names(Estacion)
is.na(Estacion)

# Obtenga algunas características de Densidad y Sitio

# Elaborando un data.frame
meiofauna <- data.frame(Estacion, Sitio, Densidad)

# Atributos y exploración un data.frame
View(meiofauna)
dim(meiofauna)
class(meiofauna)
names(meiofauna)
summary(meiofauna)
str(meiofauna)

# Extrae información 
meiofauna[c(1,4),]
meiofauna[c(1,4),"Sitio"]
meiofauna[c(1:2),"Densidad"]
meiofauna$Sitio
meiofauna$Sitio[-3] # excluye datos

# Practica extraer y excluir datos de Estación

# Trabajando con matrices
abundancia=c(1:24)
dim(abundancia)
M  = matrix(abundancia, ncol=4)
M
class(M)
dim(M) # dimensiones de una matriz

M[3,]
M[,c(1,2)]
mean(M)
summary(M)
M>=4 # greater than or equal to
M!=12 # not equal to

# Trabajando con listas
proyecto <- list(meiofauna, M)
proyecto
# agregar nombres a una lista
proyecto <- list(Datos=meiofauna, Abundancia=M)
proyecto
str(proyecto)

# Acceso a componentes de una lista
proyecto$Datos
proyecto$Abundancia
proyecto[[2]] 
proyecto[["Nombre proyecto"]] = c("Meioinfoauna de Brasil")

# Remover objetos de la sesión de trabajo
rm(list = ls())


