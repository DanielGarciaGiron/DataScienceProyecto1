#Descarga de archivo HechosDeTransito2009.sav de GitHub
download.file("https://github.com/DanielGarciaGiron/DataScienceProyecto1/raw/master/InfoProyecto/HechosDeTransito2009.sav",destfile = "./data/Crudos/HechosDeTransito/HechosDeTransito2009.sav")


#Importar libreria para leer archivos .sav
library(memisc)

#Convertir archivos .sav a .csv
HDT2009 <- data.frame(as.data.set(spss.system.file("data/Crudos/HechosDeTransito/HechosDeTransito2009.sav")))
HechosDeTransito2009 <- write.csv(HDT2009, file = "data/CSV/HechosDeTransito/HechosDeTransito2009.csv")
library(readr)
HechosDeTransito2009 <- read_csv("data/CSV/HechosDeTransito/HechosDeTransito2009.csv",locale = locale(encoding = "WINDOWS-1252"))
View(HechosDeTransito2009)
