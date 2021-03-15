#!/bin/zsh
DATE=$(date +"%d-%m-%y")

echo "Empezamos a las $DATE";
echo "hacemos pull del repo remoto"
cd /Users/mharias/documents/proyectos/escovid19data/
git pull origin master


# Fallecidos
echo "Copiamos ficheros Fallecidos en escovid19da"
cp  /Users/mharias/documents/proyectos/covid/sanidad_fallecidos/csv/datos_fallecidos_sanidad.csv /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_fallecimientos/datos_fallecidos_sanidad.csv
cd /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_fallecimientos/
echo "Estamos en $(pwd)"
git add datos_fallecidos_sanidad.csv
git commit -m "actualización Fallecimientos $DATE"
git push origin master
