# Cargamos las librerias necesarias y variables globales
source("src/librerias.R")
source("src/variables_globales.R")
# Para que los acentos salgan bien
formato <- iconv(formato,'UTF-8','latin1', sub = '')
diarios <- iconv(diarios,'UTF-8','latin1', sub = '')
# Leemos los datos
datos <- read_excel("Datos Sibilla/2017.xlsx")


aplicar.formato <- function( words,format) {
                   num.errores <- c()
                   num.errores <- sum(!grepl(format,words))
                   
                   return(num.errores)
}

noticias.errores <- c()

for (i in 1:length(diarios)) {
  # Seleccionamos las noticias de un diario
  datos.diario <- filter(datos,Diario == diarios[i])  
  # Separamos por ', ' las palabras
  words       <- strsplit( datos.diario$Páginas, ", ")
  # Hayamos el numero de fallos en cada noticia
  num.errores <- plyr::laply(words, aplicar.formato, format <- formato[i])
  # Recopilamos las claves de esas noticias
  noticias.errores <- c( noticias.errores, 
                         datos.diario$Clave[which(num.errores>0)])
  formato[6]
  if(!is.na( noticias.errores[1])){
  print(paste(diarios[i]," analizado con exito"))
  }
}

# Recopilamos el diario y la paginacion al que pertenecen las noticias
diarios.errores    <- datos$Diario[datos$Clave %in% noticias.errores ]
paginacion.errores <- datos$Páginas[datos$Clave %in% noticias.errores ]

# Mostramos el resultado
inventario.errores <- data.frame(diarios.errores, noticias.errores,paginacion.errores)
View(inventario.errores)

write.xlsx(inventario.errores,file = "Tablas Errores/2017_12_31_2018_1_1_errores.xlsx")
