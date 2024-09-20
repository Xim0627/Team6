# Aplicación de la Representación de Frecuencia de Juego de Caos en secuencias de metagenomas para la clasificación del diagnóstico de caries

## Problema:

- La detección de pacientes con caries es compleja, actualmente su detección se realiza por medio de la inspección visual y sólo es detectable en etapas tardías, para la detección temprana de caries se necesita de la identificación de una gran variedad de bacterias y llevar a cabo diversos estudios. Sin embargo, con la ayuda de técnicas de secuenciación de genoma (PCR) y tecnología como el “Frequency Chaos Game Representation” (FCGR) este diagnóstico se puede llevar a cabo de manera más rápida y eficaz. 

## Planteamiento de preguntas:
 
 - ¿Existen diferencias entre las imágenes generadas por FCGR de pacientes sin caries y las imágenes de pacientes con caries?
- ¿Se puede detectar tempranamente las caries con ayuda de las imágenes generadas por FCGR?
- En base a las imágenes generadas, ¿se puede determinar la severidad de las caries?
 

## Colección de datos:
Los datos a usar en este proyecto son secuencias de ADN, disponibles  en la base de datos del NCBI con el número de acceso PRJNA803343. [Links for bioproject - NCBI]


## Aterrizaje del proyecto

- ¿El conjunto de datos que tengo realmente me sirve para responder algunas de las preguntas que me planteé? 
Sí, pero en etapas más avanzadas del proyecto.
- ¿Qué tamaño tiene mi conjunto de datos? ¿Serán datos suficientes? 
51 filas, 9 columnas. 
- ¿Qué columnas tengo y qué información tengo en cada una de esas columnas?


| Columnas | Información | Tipo de dato |
| -------- | ------ | ---------- |
| Id | representa una llave única para cada muestra | string |
| Sequence | Strings de las bases en el ADN  | string |
| No. spots | número de reads en las muestras crudas | int |
| No. de bases  | cantidad de bases (adenina, timina, guanina, citosina) en total de los reads | int
| Size | Peso en Mb de los datos | float |
| Fecha  | Fecha en la que se publicó la información en el NCBI | string |
| Método de secuenciacion | ILLUMINA| string |

- Los nombres que tienen mis columnas, ¿son el nombre más apropiado? 
Sí
- ¿Qué tipos de datos tengo en cada columna? ¿Parecen ser el tipo correcto de datos? ¿O es un tipo de datos "incorrecto"? 
Los datos parecen estar  bien :) 
- Si selecciono algunas filas al azar y las observo, ¿estoy obteniendo los datos que debería? ¿o hay datos que parecen estar "sucios" o "incorrectos"? 
Los datos ya están limpios :) 

## Limpieza de datos 

- Explora tu dataset con el fin de encontrar los NaNs que contiene. Piensa en la distribución de NaNs por columna y por fila. 
No hay NaNs
- Piensa cuáles son los procedimientos que puedes aplicar a tus NaNs. ¿Tenemos que eliminar las filas/columnas que tienen esos NaNs? ¿O podríamos rellenar esos NaNs con algún valor de manera que podamos retener esas filas/columnas? 
No aplica 
- Limpia tu dataset de manera que no quede ningún NaN. 
No aplica
- Reindexa tu dataset si lo consideras necesario. 
No aplica
- Renombra tus columnas si lo consideras necesario. 
No aplica

   [Links for bioproject - NCBI ]: <https://www.ncbi.nlm.nih.gov/sra?linkname=bioproject_sra_all&from_uid=803343>
