# Comunidad de Madrid: Análisis del impacto de retrasos en la asignación de casos positivos

Aqui vemos los gráficos correspondientes al estudio de las fechas de asignación vs publicación de la Comunidad de Madrid:
Por medio del [script](https://github.com/mharias/covid/blob/master/IA14_madrid/analisis_AI14_Madrid_incv1.ipynb) nos descargamos la información publicada por la Comunidad de MAdrid diariamente.

Este [pdf](https://www.comunidad.madrid/sites/default/files/doc/sanidad/201226_cam_covid19.pdf),por ejemplo, es el correspondiente al día 26 de Diciembre.


Una vez tratada la información conseguimos un fichero [csv](https://github.com/mharias/covid/blob/master/IA14_madrid/csv/numeros_madrid_tabla.csv) con todos los datos diarios que se han publicado desde 1 de Septiembre. Y podemos comprobar como se han asignado los datos publicados en un determinado día.

Y lo podemos presentar en este gráfico en el que en el eje X encontramos el día de publicación (desde 1 de Septiembre como he comentado) y la actualidad (puede presentar algún retraso por mi disponibilidad de tiempo) y en el eje Y podemos ver los días a los que se han asignado esas publicaciones.
![Estado por provincias](https://github.com/mharias/covid/blob/master/IA14_madrid/imagenes/distribucion_madrid.png)
En el siguiente gráfico podemos ver la misma información pero con porcentajes. Así los porcentajes de una columna suman 100%
![Estado por provincias](https://github.com/mharias/covid/blob/master/IA14_madrid/imagenes/distribucion_madrid_pct.png)
Y a continuación asignamos los casos a cestas de 1,7, 21, 100 y más de 100 días para, de manera fácil, poder visualizar los retrasos
![Estado por provincias](https://github.com/mharias/covid/blob/master/IA14_madrid/imagenes/casos+distri_madrid.png)

Otra manera de ver la misma información se consigue centrándonos en la fecha de asignación...
De esta manera podemos coomprobar como se han ido publicando en el futuro los casos positivos asociados a un determinado día.

![Estado por provincias](https://github.com/mharias/covid/blob/master/IA14_madrid/imagenes/distribucion_asignados_madrid.png)

Y su correspondiente versión con porcentajes. Aquí podemos comprobar que la suma de una fila es igual a 100%
![Estado por provincias](https://github.com/mharias/covid/blob/master/IA14_madrid/imagenes/distribucion_asignados_pct_madrid_pct.png)

Y como hemos hecho con la gráfica de publicación hemos preparado un gráfico en el que asociamos por cestas a los positivos asignados, pudiendo comprobar rápidamente como se comporta esta asignación en el tiempo. Y ver si el modelo se mejora o, sin embargo, empeora.
![Estado por provincias](https://github.com/mharias/covid/blob/master/IA14_madrid/imagenes/resumen_asignados_madrid.png)


* update día 4/enero: podemos ver el cambio de algoritmo del día 26
