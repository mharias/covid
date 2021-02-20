#!/bin/zsh
DATE=$(date)

echo "Empezamos a las $DATE";
echo "hacemos pull del repo remoto"
cd /Users/mharias/documents/proyectos/escovid19data/
git pull origin master

# Vacunas
echo "Copiamos ficheros vacunas en escovid19da"
cp -R /Users/mharias/documents/proyectos/covid/vacunacion/csv/. /Users/mharias/documents/proyectos/escovid19data/data/original/vacunas/.
cd /Users/mharias/documents/proyectos/escovid19data/data/original/vacunas/
echo "Estamos en $(pwd)"
git add .
git commit -m "actualización vacunaciones $DATE"
git push origin master


# Hospitalizados
echo "Copiamos ficheros Hospitalizados en escovid19da"
cp  /Users/mharias/documents/proyectos/covid/sanidad_hospital/data/datos_sanidad_hosp.csv /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_hospitalizados/datos_sanidad_hosp.csv
cd /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_hospitalizados/
echo "Estamos en $(pwd)"
git add datos_sanidad_hosp.csv
git commit -m "actualización Hospitalizaciones $DATE"
git push origin master


# Fallecidos
echo "Copiamos ficheros Fallecidos en escovid19da"
cp  /Users/mharias/documents/proyectos/covid/sanidad_fallecidos/csv/datos_fallecidos_sanidad.csv /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_fallecimientos/datos_fallecidos_sanidad.csv
cd /Users/mharias/documents/proyectos/escovid19data/data/original/sanidad_fallecimientos/
echo "Estamos en $(pwd)"
git add datos_fallecidos_sanidad.csv
git commit -m "actualización Fallecimientos $DATE"
git push origin master
