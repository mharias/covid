#!/bin/zsh
DATE=$(date +"%d-%m-%y")

echo "Empezamos a las $DATE";
echo "hacemos pull del repo remoto"
cd /Users/mharias/documents/proyectos/escovid19data/
git pull origin master


# Hospitalizados
echo "Copiamos ficheros Hospitalizados en escovid19da"
cp  /Users/mharias/documents/proyectos/covid/sanidad_hospital/data/datos_sanidad_hosp.csv /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_hospitalizados/datos_sanidad_hosp.csv
cd /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_hospitalizados/
echo "Estamos en $(pwd)"
git add datos_sanidad_hosp.csv
git commit -m "actualización Hospitalizaciones $DATE"
git push origin master
