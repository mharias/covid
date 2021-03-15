#!/bin/zsh
DATE=$(date +"%d-%m-%y")

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
