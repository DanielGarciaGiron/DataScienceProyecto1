
#Instalar e importar librerias necesarias para correr el programa
for (libreria in c("memisc","filesstrings","openxlsx","data.table","tidyr","dplyr")) {
  if (!require(libreria, character.only=T)) {
    install.packages(libreria)
    library(libreria, character.only=T)
  }
}


#----------------- Descarga de datos y extraccion de los mismos     -----------------#
#Se descarga el zip desde github. 
download.file( url = "https://github.com/DanielGarciaGiron/DataScienceProyecto1/archive/Datos.zip", destfile = "data.zip" )

#este archivo se descomprime, lo cual genera un folder llamado DataScienceProyecto1-Datos el cual tiene otro folder
# "data" el cual contiene todos los archivos necesarios del proyecto.
unzip( zipfile = "data.zip" )

#se crean folders para guardar los resultados de las siguientes funciones.
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



#----------------- Unificacion de archivos del mismo tipo -----------------#
#Funcion encargada de leer todos los archivos en la direccion dada y unificarlos en un dataset unico.
#si se tienen archivos nulos, estos se cambian a NA.
multmerge=function(mypath) {
  filenames=list.files(path=path, full.names=TRUE)
  rbindlist(lapply(filenames, fread),fill = TRUE)
  }


#antes, se unen dos archivos del 2009 para crear uno solo y se eliminan los dos por separado.
fallecidos2009 = read.csv("DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados/Fallecidos2009.csv", header=T)
lesionados2009 = read.csv("DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados/Lesionados2009.csv", header=T)
FallecidosLesionados2009 = merge(fallecidos2009, lesionados2009, all = TRUE)
write.csv(FallecidosLesionados2009, file = "DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados/FallecidosLesionados2009.csv")
eliminarfallecidos2009 <- "DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados/Fallecidos2009.csv"
if (file.exists(eliminarfallecidos2009)) file.remove(eliminarfallecidos2009)
eliminarlesionados2009 <- "DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados/Lesionados2009.csv"
if (file.exists(eliminarlesionados2009)) file.remove(eliminarlesionados2009)

#se generan los archivos unificados y se guardan en la carpeta de unificados.
path <- "DataScienceProyecto1-Datos/data/CSV/FallecidosLesionados/"
FallecidosLesionadosUnificados = multmerge(path)
write.csv(FallecidosLesionadosUnificados, file = "DataScienceProyecto1-Datos/data/Unificados/FallecidosLesionadosUnificados.csv")

path <- "DataScienceProyecto1-Datos/data/CSV/HechosDeTransito/"
HechosDeTransitoUnificados = multmerge(path)
write.csv(HechosDeTransitoUnificados, file = "DataScienceProyecto1-Datos/data/Unificados/HechosDeTransitoUnificados.csv")

path <- "DataScienceProyecto1-Datos/data/CSV/VehiculosInvolucrados/"
VehiculosInvolucradosUnificados = multmerge(path)
write.csv(VehiculosInvolucradosUnificados, file = "DataScienceProyecto1-Datos/data/Unificados/VehiculosInvolucradosUnificados.csv")

#----------------- Limpieza de datos  -----------------#

#Unificacion de datos de Fallecidos y Lesionados
FallecidosLesionadosLimpios <- FallecidosLesionadosUnificados

FallecidosLesionadosLimpios = unite(FallecidosLesionadosLimpios, "Dia", c("dia_ocu","día_ocu"), sep = " ", remove=TRUE)
FallecidosLesionadosLimpios$Dia <- as.numeric(gsub("NA"," ",FallecidosLesionadosLimpios$Dia))

FallecidosLesionadosLimpios = unite(FallecidosLesionadosLimpios, "DiaSemana", c("dia_sem_ocu","día_sem_ocu"), sep = " ", remove=TRUE)
FallecidosLesionadosLimpios$DiaSemana <- as.numeric(gsub("NA"," ",FallecidosLesionadosLimpios$DiaSemana))

FallecidosLesionadosLimpios = unite(FallecidosLesionadosLimpios, "CausaAccidente", c("causa_acc","Causa_acc", "casusa_acc"), sep = " ", remove=TRUE)
FallecidosLesionadosLimpios$CausaAccidente <- as.numeric(gsub("NA"," ",FallecidosLesionadosLimpios$CausaAccidente))

FallecidosLesionadosLimpios = unite(FallecidosLesionadosLimpios, "SexoPersona", c("sexo_pil","sexo_fall_les", "sexo_per", "sexo_víc","sexo_les"), sep = " ", remove=TRUE)
FallecidosLesionadosLimpios$SexoPersona <- as.numeric(gsub("NA"," ",FallecidosLesionadosLimpios$SexoPersona))

FallecidosLesionadosLimpios = unite(FallecidosLesionadosLimpios, "EdadPersona", c("edad_fall","edad_fall_les", "edad_pil", "edad_víc","edad_les"), sep = " ", remove=TRUE)
FallecidosLesionadosLimpios$EdadPersona <- as.numeric(gsub("NA"," ",FallecidosLesionadosLimpios$EdadPersona))

FallecidosLesionadosLimpios = unite(FallecidosLesionadosLimpios, "FallecidosLesionados", c("lesio_fall","Fallecidos_Lesionados","fall_les"), sep = " ", remove=TRUE)
FallecidosLesionadosLimpios$FallecidosLesionados <- as.numeric(gsub("NA"," ",FallecidosLesionadosLimpios$FallecidosLesionados))

#se elimina la primera columna del data set la cual contiene solamente numeros de fila (duplicada).
FallecidosLesionadosLimpios <- FallecidosLesionadosLimpios[,-1]

#Unificacion de datos de Hechos de transito



#Unificacion de datos de Vehiculos implicados



#----------------- Generacion del archivo final unificado  -----------------#
path <- "DataScienceProyecto1-Datos/data/Unificados/"
DatosFinales = multmerge(path)
write.csv(DatosFinales, file = "DataScienceProyecto1-Datos/data/Resultado/DatosFinales.csv")