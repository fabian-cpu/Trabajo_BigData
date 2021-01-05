#############################################################################
###########DATOS DE PERFUMES DE HOMBRE#######################################
#############################################################################

library("rvest")
library("gdata")

#descargando la pagina
sairam <- read_html("https://sairam.cl/perfumes-de-hombre?page=1")
saraim1 <- read_html("https://sairam.cl/perfumes-de-hombre?page=2")
saraim2 <- read_html("https://sairam.cl/perfumes-de-hombre?page=3")
saraim3 <- read_html("https://sairam.cl/perfumes-de-hombre?page=4")
saraim4 <- read_html("https://sairam.cl/perfumes-de-hombre?page=5")

#listado de Productos 
listadoprodcutos <- html_nodes(sairam,css = ".caption")
listadoprodcutos1 <- html_nodes(saraim1,css = ".caption")
listadoprodcutos2 <- html_nodes(saraim2,css = ".caption")
listadoprodcutos3 <- html_nodes(saraim3,css = ".caption")
listadoprodcutos4 <- html_nodes(saraim4,css = ".caption")

#### titulos de los prodcutos
titulos <- html_nodes(listadoprodcutos, "h3")
textTitulos <- html_text(titulos)

titulos1 <- html_nodes(listadoprodcutos1, "h3")
textTitulos1 <- html_text(titulos1)

titulos2 <- html_nodes(listadoprodcutos2, "h3")
textTitulos2 <- html_text(titulos2)

titulos3 <- html_nodes(listadoprodcutos3, "h3")
textTitulos3 <- html_text(titulos3)

titulos4 <- html_nodes(listadoprodcutos4, "h3")
textTitulos4 <- html_text(titulos4)

for (i in 1:length(textTitulos)) {
  print(textTitulos[i])
}

#Descripcion
descripcion <- html_nodes(listadoprodcutos, "h4")
textoDescripcion <- html_text(descripcion)

descripcion1 <- html_nodes(listadoprodcutos1, "h4")
textoDescripcion1 <- html_text(descripcion1)

descripcion2 <- html_nodes(listadoprodcutos2, "h4")
textoDescripcion2 <- html_text(descripcion2)

descripcion3 <- html_nodes(listadoprodcutos3, "h4")
textoDescripcion3 <- html_text(descripcion3)

descripcion4 <- html_nodes(listadoprodcutos4, "h4")
textoDescripcion4 <- html_text(descripcion4)

for (i in 1:length(textoDescripcion)) {
  print(textoDescripcion[i])
}


#precios antes
precioantes <- html_nodes(listadoprodcutos,css = ".product-block-discount")
textoPrecioAntes <- html_text(precioantes)
textoPrecioAntes <- gsub("[.]","",textoPrecioAntes)
textoPrecioAntes <- gsub("[$]","",textoPrecioAntes)
textoPrecioAntes <- as.numeric(textoPrecioAntes)

precioantes1 <- html_nodes(listadoprodcutos1,css = ".product-block-discount")
textoPrecioAntes1 <- html_text(precioantes1)
textoPrecioAntes1 <- gsub("[.]","",textoPrecioAntes1)
textoPrecioAntes1 <- gsub("[$]","",textoPrecioAntes1)
textoPrecioAntes1 <- as.numeric(textoPrecioAntes1)

precioantes2 <- html_nodes(listadoprodcutos2,css = ".product-block-discount")
textoPrecioAntes2 <- html_text(precioantes2)
textoPrecioAntes2 <- gsub("[.]","",textoPrecioAntes2)
textoPrecioAntes2 <- gsub("[$]","",textoPrecioAntes2)
textoPrecioAntes2 <- as.numeric(textoPrecioAntes2)

precioantes3 <- html_nodes(listadoprodcutos3,css = ".product-block-discount")
textoPrecioAntes3 <- html_text(precioantes3)
textoPrecioAntes3 <- gsub("[.]","",textoPrecioAntes3)
textoPrecioAntes3 <- gsub("[$]","",textoPrecioAntes3)
textoPrecioAntes3 <- as.numeric(textoPrecioAntes3)

precioantes4 <- html_nodes(listadoprodcutos4,css = ".product-block-discount")
textoPrecioAntes4 <- html_text(precioantes4)
textoPrecioAntes4 <- gsub("[.]","",textoPrecioAntes4)
textoPrecioAntes4 <- gsub("[$]","",textoPrecioAntes4)
textoPrecioAntes4 <- as.numeric(textoPrecioAntes4)

for (i in 1:length(textoPrecioAntes)) {
  print(textoPrecioAntes[i])
}

#precio despues
preciodespues <- html_nodes(listadoprodcutos,css = ".product-block-list")
textoPrecioDespues <- html_text(preciodespues)
textoPrecioDespues <- gsub("[.]","",textoPrecioDespues)
textoPrecioDespues <- gsub("[$]","",textoPrecioDespues)
textoPrecioDespues <- trim(textoPrecioDespues)
textoPrecioDespues <- as.numeric(textoPrecioDespues)

preciodespues1 <- html_nodes(listadoprodcutos1,css = ".product-block-list")
textoPrecioDespues1 <- html_text(preciodespues1)
textoPrecioDespues1 <- gsub("[.]","",textoPrecioDespues1)
textoPrecioDespues1 <- gsub("[$]","",textoPrecioDespues1)
textoPrecioDespues1 <- trim(textoPrecioDespues1)
textoPrecioDespues1 <- as.numeric(textoPrecioDespues1)

preciodespues2 <- html_nodes(listadoprodcutos2,css = ".product-block-list")
textoPrecioDespues2 <- html_text(preciodespues2)
textoPrecioDespues2 <- gsub("[.]","",textoPrecioDespues2)
textoPrecioDespues2 <- gsub("[$]","",textoPrecioDespues2)
textoPrecioDespues2 <- trim(textoPrecioDespues2)
textoPrecioDespues2 <- as.numeric(textoPrecioDespues2)

preciodespues3 <- html_nodes(listadoprodcutos3,css = ".product-block-list")
textoPrecioDespues3 <- html_text(preciodespues3)
textoPrecioDespues3 <- gsub("[.]","",textoPrecioDespues3)
textoPrecioDespues3 <- gsub("[$]","",textoPrecioDespues3)
textoPrecioDespues3 <- trim(textoPrecioDespues3)
textoPrecioDespues3 <- as.numeric(textoPrecioDespues3)

preciodespues4 <- html_nodes(listadoprodcutos4,css = ".product-block-list")
textoPrecioDespues4 <- html_text(preciodespues4)
textoPrecioDespues4 <- gsub("[.]","",textoPrecioDespues4)
textoPrecioDespues4 <- gsub("[$]","",textoPrecioDespues4)
textoPrecioDespues4 <- trim(textoPrecioDespues4)
textoPrecioDespues4 <- as.numeric(textoPrecioDespues4)

for (i in 1:length(textoPrecioDespues)) {
  print(textoPrecioDespues[i])
}

#para saber cuantos perfumes de marcas hay
table(textTitulos1)

#####DESCUENTO####
listadodeDescuento <- html_nodes(sairam,css = ".product-image_content")
listadodeDescuento1 <- html_nodes(saraim1,css = ".product-image_content")
listadodeDescuento2 <- html_nodes(saraim2,css = ".product-image_content")
listadodeDescuento3 <- html_nodes(saraim3,css = ".product-image_content")
listadodeDescuento4 <- html_nodes(saraim4,css = ".product-image_content")

#porciento de descuento en perfumes
descuento <- html_nodes(listadodeDescuento,css = ".offdcto2")
textoDescuento <- html_text(descuento)
textoDescuento <- gsub("&percnt","",textoDescuento)
textoDescuento <- gsub("[;]","",textoDescuento)
textoDescuento <- as.numeric(textoDescuento)

descuento1 <- html_nodes(listadodeDescuento1,css = ".offdcto2")
textoDescuento1 <- html_text(descuento1)
textoDescuento1 <- gsub("&percnt","",textoDescuento1)
textoDescuento1 <- gsub("[;]","",textoDescuento1)
textoDescuento1 <- as.numeric(textoDescuento1)

descuento2 <- html_nodes(listadodeDescuento2,css = ".offdcto2")
textoDescuento2 <- html_text(descuento2)
textoDescuento2 <- gsub("&percnt","",textoDescuento2)
textoDescuento2 <- gsub("[;]","",textoDescuento2)
textoDescuento2 <- as.numeric(textoDescuento2)

descuento3 <- html_nodes(listadodeDescuento3,css = ".offdcto2")
textoDescuento3 <- html_text(descuento3)
textoDescuento3 <- gsub("&percnt","",textoDescuento3)
textoDescuento3 <- gsub("[;]","",textoDescuento3)
textoDescuento3 <- as.numeric(textoDescuento3)

descuento4 <- html_nodes(listadodeDescuento4,css = ".offdcto2")
textoDescuento4 <- html_text(descuento4)
textoDescuento4 <- gsub("&percnt","",textoDescuento4)
textoDescuento4 <- gsub("[;]","",textoDescuento4)
textoDescuento4 <- as.numeric(textoDescuento4)

for (i in 1:length(textoDescuento)) {
  print(textoDescuento[i])
}


#(almacenando Informacion 1) creacion del dataframe 
todaLaInformacion <- data.frame()

#############REUNIENDO INFORMACION###############
for (i in 1:length(textTitulos)) {
  print("=======item========")
  print(textTitulos[i])
  print(textoDescripcion[i])
  print(textoPrecioAntes[i])
  print(textoPrecioDespues[i])
  print(textoDescuento[i])
}

#(almacenamiento Informacion 2) creando el dataframe con los detalles
#de cada ITEM
item <- data.frame(Titulo=textTitulos, Descripcion=textoDescripcion, PrecioAntes=textoPrecioAntes, PrecioDespues=textoPrecioDespues, Descuento=textoDescuento)

#(almacenamiento Informacion 3) almacenando la informacion del producto 
#con los datos totales
todaLaInformacion <- rbind(todaLaInformacion, item)

item1 <- data.frame(Titulo=textTitulos1, Descripcion=textoDescripcion1, PrecioAntes=textoPrecioAntes1, PrecioDespues=textoPrecioDespues1, Descuento=textoDescuento1)
item2 <- data.frame(Titulo=textTitulos2, Descripcion=textoDescripcion2, PrecioAntes=textoPrecioAntes2, PrecioDespues=textoPrecioDespues2, Descuento=textoDescuento2)
item3 <- data.frame(Titulo=textTitulos3, Descripcion=textoDescripcion3, PrecioAntes=textoPrecioAntes3, PrecioDespues=textoPrecioDespues3, Descuento=textoDescuento3)
item4 <- data.frame(Titulo=textTitulos4, Descripcion=textoDescripcion4, PrecioAntes=textoPrecioAntes4, PrecioDespues=textoPrecioDespues4, Descuento=textoDescuento4)

todaLaInformacion=rbind(todaLaInformacion,item1,item2,item3,item4)

#############################################################################
###########DATOS DE PERFUMES DE MUJER########################################
#############################################################################

#descargando la pagina
sairam5 <- read_html("https://sairam.cl/perfumes-de-mujer?page=1")
saraim6 <- read_html("https://sairam.cl/perfumes-de-mujer?page=2")
saraim7 <- read_html("https://sairam.cl/perfumes-de-mujer?page=3")
saraim8 <- read_html("https://sairam.cl/perfumes-de-mujer?page=4")
saraim9 <- read_html("https://sairam.cl/perfumes-de-mujer?page=5")

#listado de Productos 
listadoprodcutos5 <- html_nodes(sairam5,css = ".caption")
listadoprodcutos6 <- html_nodes(saraim6,css = ".caption")
listadoprodcutos7 <- html_nodes(saraim7,css = ".caption")
listadoprodcutos8 <- html_nodes(saraim8,css = ".caption")
listadoprodcutos9 <- html_nodes(saraim9,css = ".caption")

#### titulos de los prodcutos
titulos5 <- html_nodes(listadoprodcutos5, "h3")
textTitulos5 <- html_text(titulos5)

titulos6 <- html_nodes(listadoprodcutos6, "h3")
textTitulos6 <- html_text(titulos6)

titulos7 <- html_nodes(listadoprodcutos7, "h3")
textTitulos7 <- html_text(titulos7)

titulos8 <- html_nodes(listadoprodcutos8, "h3")
textTitulos8 <- html_text(titulos8)

titulos9 <- html_nodes(listadoprodcutos9, "h3")
textTitulos9 <- html_text(titulos9)

for (i in 1:length(textTitulos)) {
  print(textTitulos[i])
}

#Descripcion
descripcion5 <- html_nodes(listadoprodcutos5, "h4")
textoDescripcion5 <- html_text(descripcion5)

descripcion6 <- html_nodes(listadoprodcutos6, "h4")
textoDescripcion6 <- html_text(descripcion6)

descripcion7 <- html_nodes(listadoprodcutos7, "h4")
textoDescripcion7 <- html_text(descripcion7)

descripcion8 <- html_nodes(listadoprodcutos8, "h4")
textoDescripcion8 <- html_text(descripcion8)

descripcion9 <- html_nodes(listadoprodcutos9, "h4")
textoDescripcion9 <- html_text(descripcion9)

for (i in 1:length(textoDescripcion)) {
  print(textoDescripcion[i])
}


#precios antes
precioantes5 <- html_nodes(listadoprodcutos5,css = ".product-block-discount")
textoPrecioAntes5 <- html_text(precioantes5)
textoPrecioAntes5 <- gsub("[.]","",textoPrecioAntes5)
textoPrecioAntes5 <- gsub("[$]","",textoPrecioAntes5)
textoPrecioAntes5 <- as.numeric(textoPrecioAntes5)

precioantes6 <- html_nodes(listadoprodcutos6,css = ".product-block-discount")
textoPrecioAntes6 <- html_text(precioantes6)
textoPrecioAntes6 <- gsub("[.]","",textoPrecioAntes6)
textoPrecioAntes6 <- gsub("[$]","",textoPrecioAntes6)
textoPrecioAntes6 <- as.numeric(textoPrecioAntes6)

precioantes7 <- html_nodes(listadoprodcutos7,css = ".product-block-discount")
textoPrecioAntes7 <- html_text(precioantes7)
textoPrecioAntes7 <- gsub("[.]","",textoPrecioAntes7)
textoPrecioAntes7 <- gsub("[$]","",textoPrecioAntes7)
textoPrecioAntes7 <- as.numeric(textoPrecioAntes7)

precioantes8 <- html_nodes(listadoprodcutos8,css = ".product-block-discount")
textoPrecioAntes8 <- html_text(precioantes8)
textoPrecioAntes8 <- gsub("[.]","",textoPrecioAntes8)
textoPrecioAntes8 <- gsub("[$]","",textoPrecioAntes8)
textoPrecioAntes8 <- as.numeric(textoPrecioAntes8)

precioantes9 <- html_nodes(listadoprodcutos9,css = ".product-block-discount")
textoPrecioAntes9 <- html_text(precioantes9)
textoPrecioAntes9 <- gsub("[.]","",textoPrecioAntes9)
textoPrecioAntes9 <- gsub("[$]","",textoPrecioAntes9)
textoPrecioAntes9 <- as.numeric(textoPrecioAntes9)

for (i in 1:length(textoPrecioAntes)) {
  print(textoPrecioAntes[i])
}

#precio despues
preciodespues5 <- html_nodes(listadoprodcutos5,css = ".product-block-list")
textoPrecioDespues5 <- html_text(preciodespues5)
textoPrecioDespues5 <- gsub("[.]","",textoPrecioDespues5)
textoPrecioDespues5 <- gsub("[$]","",textoPrecioDespues5)
textoPrecioDespues5 <- trim(textoPrecioDespues5)
textoPrecioDespues5 <- as.numeric(textoPrecioDespues5)

preciodespues6 <- html_nodes(listadoprodcutos6,css = ".product-block-list")
textoPrecioDespues6 <- html_text(preciodespues6)
textoPrecioDespues6 <- gsub("[.]","",textoPrecioDespues6)
textoPrecioDespues6 <- gsub("[$]","",textoPrecioDespues6)
textoPrecioDespues6 <- trim(textoPrecioDespues6)
textoPrecioDespues6 <- as.numeric(textoPrecioDespues6)

preciodespues7 <- html_nodes(listadoprodcutos7,css = ".product-block-list")
textoPrecioDespues7 <- html_text(preciodespues7)
textoPrecioDespues7 <- gsub("[.]","",textoPrecioDespues7)
textoPrecioDespues7 <- gsub("[$]","",textoPrecioDespues7)
textoPrecioDespues7 <- trim(textoPrecioDespues7)
textoPrecioDespues7 <- as.numeric(textoPrecioDespues7)

preciodespues8 <- html_nodes(listadoprodcutos8,css = ".product-block-list")
textoPrecioDespues8 <- html_text(preciodespues8)
textoPrecioDespues8 <- gsub("[.]","",textoPrecioDespues8)
textoPrecioDespues8 <- gsub("[$]","",textoPrecioDespues8)
textoPrecioDespues8 <- trim(textoPrecioDespues8)
textoPrecioDespues8 <- as.numeric(textoPrecioDespues8)

preciodespues9 <- html_nodes(listadoprodcutos9,css = ".product-block-list")
textoPrecioDespues9 <- html_text(preciodespues9)
textoPrecioDespues9 <- gsub("[.]","",textoPrecioDespues9)
textoPrecioDespues9 <- gsub("[$]","",textoPrecioDespues9)
textoPrecioDespues9 <- trim(textoPrecioDespues9)
textoPrecioDespues9 <- as.numeric(textoPrecioDespues9)

for (i in 1:length(textoPrecioDespues)) {
  print(textoPrecioDespues[i])
}

#para saber cuantos perfumes de marcas hay
table(textTitulos1)

#####DESCUENTO####
listadodeDescuento5 <- html_nodes(sairam5,css = ".product-image_content")
listadodeDescuento6 <- html_nodes(saraim6,css = ".product-image_content")
listadodeDescuento7 <- html_nodes(saraim7,css = ".product-image_content")
listadodeDescuento8 <- html_nodes(saraim8,css = ".product-image_content")
listadodeDescuento9 <- html_nodes(saraim9,css = ".product-image_content")

#porciento de descuento en perfumes
descuento5 <- html_nodes(listadodeDescuento5,css = ".offdcto2")
textoDescuento5 <- html_text(descuento5)
textoDescuento5 <- gsub("&percnt","",textoDescuento5)
textoDescuento5 <- gsub("[;]","",textoDescuento5)
textoDescuento5 <- as.numeric(textoDescuento5)

descuento6 <- html_nodes(listadodeDescuento6,css = ".offdcto2")
textoDescuento6 <- html_text(descuento6)
textoDescuento6 <- gsub("&percnt","",textoDescuento6)
textoDescuento6 <- gsub("[;]","",textoDescuento6)
textoDescuento6 <- as.numeric(textoDescuento6)

descuento7 <- html_nodes(listadodeDescuento7,css = ".offdcto2")
textoDescuento7 <- html_text(descuento7)
textoDescuento7 <- gsub("&percnt","",textoDescuento7)
textoDescuento7 <- gsub("[;]","",textoDescuento7)
textoDescuento7 <- as.numeric(textoDescuento7)

descuento8 <- html_nodes(listadodeDescuento8,css = ".offdcto2")
textoDescuento8 <- html_text(descuento8)
textoDescuento8 <- gsub("&percnt","",textoDescuento8)
textoDescuento8 <- gsub("[;]","",textoDescuento8)
textoDescuento8 <- as.numeric(textoDescuento8)

descuento9 <- html_nodes(listadodeDescuento9,css = ".offdcto2")
textoDescuento9 <- html_text(descuento9)
textoDescuento9 <- gsub("&percnt","",textoDescuento9)
textoDescuento9 <- gsub("[;]","",textoDescuento9)
textoDescuento9 <- as.numeric(textoDescuento9)

for (i in 1:length(textoDescuento)) {
  print(textoDescuento[i])
}


#(almacenando Informacion 1) creacion del dataframe 
todaLaInformacion1 <- data.frame()

#############REUNIENDO INFORMACION###############
for (i in 1:length(textTitulos)) {
  print("=======item========")
  print(textTitulos[i])
  print(textoDescripcion[i])
  print(textoPrecioAntes[i])
  print(textoPrecioDespues[i])
  print(textoDescuento[i])
}

#(almacenamiento Informacion 2) creando el dataframe con los detalles
#de cada ITEM
item5 <- data.frame(Titulo=textTitulos5, Descripcion=textoDescripcion5, PrecioAntes=textoPrecioAntes5, PrecioDespues=textoPrecioDespues5, Descuento=textoDescuento5)

#(almacenamiento Informacion 3) almacenando la informacion del producto 
#con los datos totales
todaLaInformacion1 <- rbind(todaLaInformacion1, item5)

item6 <- data.frame(Titulo=textTitulos6, Descripcion=textoDescripcion6, PrecioAntes=textoPrecioAntes6, PrecioDespues=textoPrecioDespues6, Descuento=textoDescuento6)
item7 <- data.frame(Titulo=textTitulos7, Descripcion=textoDescripcion7, PrecioAntes=textoPrecioAntes7, PrecioDespues=textoPrecioDespues7, Descuento=textoDescuento7)
item8 <- data.frame(Titulo=textTitulos8, Descripcion=textoDescripcion8, PrecioAntes=textoPrecioAntes8, PrecioDespues=textoPrecioDespues8, Descuento=textoDescuento8)
item9 <- data.frame(Titulo=textTitulos9, Descripcion=textoDescripcion9, PrecioAntes=textoPrecioAntes9, PrecioDespues=textoPrecioDespues9, Descuento=textoDescuento9)

todaLaInformacion1=rbind(todaLaInformacion1,item1,item2,item3,item4)


##############################################################################
#######################GRAFICOS y ESTADISTICA DESCRIPTIVA#####################
##############################PERFUMES DE HOMBRES#############################
##############################################################################

library(ggplot2)
library(dplyr)
library(forcats)

#Grafico de Muestra de Perfumes de Hombres y sus Precios
MuestraPerfumeHombre <- todaLaInformacion[-c(1,7,23,40,80,4,8,12,15,22,28,29,35,44,51,62,
                                             33,37,48,61,66,90,18,95,14,19,26,31,34,42,53,
                                             3,11,5,50,64,84,6,13,32,38,49,58,59,65,89,67,
                                             24,27,9,20,39,46,10,70,77,16,45,52,98,57,69,72,
                                             17,30,85,91),]
table(MuestraPerfumeHombre$Titulo)

#Precios Antes
MuestraPerfumeHombre %>%
  mutate(name = fct_reorder(Titulo, PrecioAntes)) %>%
  ggplot( aes(x=Titulo, y=PrecioAntes)) +
  geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()

#Precios Despues
MuestraPerfumeHombre %>%
  mutate(name = fct_reorder(Titulo, PrecioDespues)) %>%
  ggplot( aes(x=Titulo, y=PrecioDespues)) +
  geom_bar(stat="identity", fill="#f68100", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()

#Precio (promedio) de Antes y Despues
mean(MuestraPerfumeHombre$PrecioAntes)
mean(MuestraPerfumeHombre$PrecioDespues)
#Precio Minimo y Maximo de Antes
min(MuestraPerfumeHombre$PrecioAntes)
max(MuestraPerfumeHombre$PrecioAntes)
#Precio Minimo y Maximo de Despues
min(MuestraPerfumeHombre$PrecioDespues)
max(MuestraPerfumeHombre$PrecioDespues)

#Promedio de Descuento
mean(MuestraPerfumeHombre$Descuento)
#Descuentos Minimo y Maximo 
min(MuestraPerfumeHombre$Descuento)
max(MuestraPerfumeHombre$Descuento)

##############################################################################
#######################GRAFICOS y ESTADISTICA DESCRIPTIVA#####################
##############################PERFUMES DE MUJERES#############################
##############################################################################

library(ggplot2)
library(dplyr)
library(forcats)

#Grafico de Muestra de Perfumes de Hombres y sus Precios
MuestraPerfumeMujer <- todaLaInformacion1[-c(2:4,6,8,11,13,18,20,23,23,26:31,33,34,35
                                             ,37:39,42:46,48,49,51:55,57,58,59,61,62
                                             ,64:66,69,72,76:80,83:85,87:93,96:100),]
table(MuestraPerfumeMujer$Titulo)

#Precios Antes 
MuestraPerfumeMujer %>%
  mutate(name = fct_reorder(Titulo, PrecioAntes)) %>%
  ggplot( aes(x=Titulo, y=PrecioAntes)) +
  geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()

#Precios Despues
MuestraPerfumeMujer %>%
  mutate(name = fct_reorder(Titulo, PrecioDespues)) %>%
  ggplot( aes(x=Titulo, y=PrecioDespues)) +
  geom_bar(stat="identity", fill="#f68100", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()

#Precio (promedio) de Antes y Despues
mean(MuestraPerfumeMujer$PrecioAntes)
mean(MuestraPerfumeMujer$PrecioDespues)
#Precio Minimo y Maximo de Antes
min(MuestraPerfumeMujer$PrecioAntes)
max(MuestraPerfumeMujer$PrecioAntes)
#Precio Minimo y Maximo de Despues
min(MuestraPerfumeMujer$PrecioDespues)
max(MuestraPerfumeMujer$PrecioDespues)

#Promedio de Descuento
mean(MuestraPerfumeMujer$Descuento)
#Descuentos Minimo y Maximo 
min(MuestraPerfumeMujer$Descuento)
max(MuestraPerfumeMujer$Descuento)
