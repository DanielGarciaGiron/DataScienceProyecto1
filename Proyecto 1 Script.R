
#Instalar e importar librerias necesarias para correr el programa
for (libreria in c("memisc","filesstrings","openxlsx")) {
  if (!require(libreria, character.only=T)) {
    install.packages(libreria)
    library(libreria, character.only=T)
  }
}


#----------------- Descarga de datos y extraccion de los mismos     -----------------#

download.file( url = "https://github.com/DanielGarciaGiron/DataScienceProyecto1/archive/Datos.zip", destfile = "data.zip" )

unzip( zipfile = "data.zip" )

dir.create(file.path("DataScienceProyecto1-Datos/data", "CSV"))
dir.create(file.path("DataScienceProyecto1-Datos/data", "Unificados"))
dir.create(file.path("DataScienceProyecto1-Datos/data", "Resultado"))


#----------------- Convertir Fallecidos y Lesionados de .sav a .csv -----------------#

#Primero se crea una lista de todos los .sav en el folder, esta lee los .sav y los convierte a un data frame
lista_FL_sav <- lapply(Sys.glob("DataScienceProyecto1-Datos/data/Crudos/FallecidosLesionados/*.sav"), read.spss, to.data.frame = TRUE, use.value.labels = FALSE)

#Se asignan nombres para cada elemento de la lista
names(lista_FL_sav) <- c("Fallecidos2009","FallecidosLesionados2010","FallecidosLesionados2011","FallecidosLesionados2012","FallecidosLesionados2013","FallecidosLesionados2014","Lesionados2009")

#Para cada elemento i de la lista, convertirlo a .csv y 
#cambiarle el nombre de la extension de cada uno a .csv con el comando paste0.
#Ya que los archivos se guardan en el directorio principal, con file.move se pasan al directorio especificado
for(i in names(lista_FL_sav)){
  write.csv(lista_FL_sav[[i]], paste0(i,".csv"))
  file.move(paste0(i,".csv"),"DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados", overwrite = TRUE)
}

#----------------- Convertir Fallecidos y Lesionados de .xlsx a .csv -----------------#

#Primero se crea una lista de todos los .xlsx en el folder, esta lee los .xlsx y los convierte a un data frame
lista_FL_xlsx <- lapply(Sys.glob("DataScienceProyecto1-Datos/data/Crudos/FallecidosLesionados/*.xlsx"), read.xlsx)

#Se asignan nombres para cada elemento de la lista
names(lista_FL_xlsx) <- c("FallecidosLesionados2015","FallecidosLesionados2016","FallecidosLesionados2017")

#Para cada elemento i de la lista, convertirlo a .csv y 
#cambiarle el nombre de la extension de cada uno a .csv con el comando paste0.
#Ya que los archivos se guardan en el directorio principal, con file.move se pasan al directorio especificado
for(i in names(lista_FL_xlsx)){
  write.csv(lista_FL_xlsx[[i]], paste0(i,".csv"))
  file.move(paste0(i,".csv"),"DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados", overwrite = TRUE)
}

#----------------- Convertir Hechos de Transito de .sav a .csv -----------------#

#Primero se crea una lista de todos los .sav en el folder, esta lee los .sav y los convierte a un data frame
lista_HDT_sav <- lapply(Sys.glob("DataScienceProyecto1-Datos/data/Crudos/HechosDeTransito/*.sav"), read.spss, to.data.frame = TRUE, use.value.labels = FALSE)

#Se asignan nombres para cada elemento de la lista
names(lista_HDT_sav) <- c("HechosDeTransito2009","HechosDeTransito2010","HechosDeTransito2011","HechosDeTransito2012","HechosDeTransito2013","HechosDeTransito2014")

#Para cada elemento i de la lista, convertirlo a .csv y 
#cambiarle el nombre de la extension de cada uno a .csv con el comando paste0.
#Ya que los archivos se guardan en el directorio principal, con file.move se pasan al directorio especificado
for(i in names(lista_HDT_sav)){
  write.csv(lista_HDT_sav[[i]], paste0(i,".csv"))
  file.move(paste0(i,".csv"),"DataScienceProyecto1-Datos/data/CSV/HechosDeTransito", overwrite = TRUE)
}

#----------------- Convertir Hechos de Transito de .xlsx a .csv -----------------#

#Primero se crea una lista de todos los .xlsx en el folder, esta lee los .xlsx y los convierte a un data frame
lista_HDT_xlsx <- lapply(Sys.glob("DataScienceProyecto1-Datos/data/Crudos/HechosDeTransito/*.xlsx"), read.xlsx)

#Se asignan nombres para cada elemento de la lista
names(lista_HDT_xlsx) <- c("HechosDeTransito2015","HechosDeTransito2016","HechosDeTransito2017")

#Para cada elemento i de la lista, convertirlo a .csv y 
#cambiarle el nombre de la extension de cada uno a .csv con el comando paste0.
#Ya que los archivos se guardan en el directorio principal, con file.move se pasan al directorio especificado
for(i in names(lista_HDT_xlsx)){
  write.csv(lista_HDT_xlsx[[i]], paste0(i,".csv"))
  file.move(paste0(i,".csv"),"DataScienceProyecto1-Datos/data/CSV/HechosDeTransito", overwrite = TRUE)
}

#----------------- Convertir VehiculosInvolucrados de .sav a .csv -----------------#

#Primero se crea una lista de todos los .sav en el folder, esta lee los .sav y los convierte a un data frame
lista_VI_sav <- lapply(Sys.glob("DataScienceProyecto1-Datos/data/Crudos/VehiculosInvolucrados/*.sav"), read.spss, to.data.frame = TRUE, use.value.labels = FALSE)

#Se asignan nombres para cada elemento de la lista
names(lista_VI_sav) <- c("VehiculosInvolucrados2010","VehiculosInvolucrados2012","VehiculosInvolucrados2013","VehiculosInvolucrados2014")

#Para cada elemento i de la lista, convertirlo a .csv y 
#cambiarle el nombre de la extension de cada uno a .csv con el comando paste0.
#Ya que los archivos se guardan en el directorio principal, con file.move se pasan al directorio especificado
for(i in names(lista_VI_sav)){
  write.csv(lista_VI_sav[[i]], paste0(i,".csv"))
  file.move(paste0(i,".csv"),"DataScienceProyecto1-Datos/data/CSV/VehiculosInvolucrados", overwrite = TRUE)
}

#----------------- Convertir Vehiculos Involucrados de .xlsx a .csv -----------------#

#Primero se crea una lista de todos los .xlsx en el folder, esta lee los .xlsx y los convierte a un data frame
lista_VI_xlsx <- lapply(Sys.glob("DataScienceProyecto1-Datos/data/Crudos/VehiculosInvolucrados/*.xlsx"), read.xlsx)

#Se asignan nombres para cada elemento de la lista
names(lista_VI_xlsx) <- c("VehiculosInvolucrados2015","VehiculosInvolucrados2016","VehiculosInvolucrados2017")

#Para cada elemento i de la lista, convertirlo a .csv y 
#cambiarle el nombre de la extension de cada uno a .csv con el comando paste0.
#Ya que los archivos se guardan en el directorio principal, con file.move se pasan al directorio especificado
for(i in names(lista_VI_xlsx)){
  write.csv(lista_VI_xlsx[[i]], paste0(i,".csv"))
  file.move(paste0(i,".csv"),"DataScienceProyecto1-Datos/data/CSV/VehiculosInvolucrados", overwrite = TRUE)
}