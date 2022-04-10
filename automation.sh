#!/bin/bash
#Creo carpeta tempdir
mkdir tempdir
#Copio contenido de static y templates dentro de tempdir, tambien el archivo de python
cp -r static tempdir
cp -r templates tempdir
cp desafio2_app.py tempdir
#Me ubico en tempdir para generar el dockerfile
cd tempdir
#Genero dockerfile
touch dockerfile
#Agrego el contenido al dockerfile
echo "FROM python
RUN pip install flask
COPY ./static /home/myapp/static/
COPY ./templates /home/myapp/templates/
COPY desafio2_app.py /home/myapp/
EXPOSE 5050
CMD python3 /home/myapp/desafio2_app.py" > dockerfile
#Genero el contenedor desde el dockerfile generado anteriormente
sudo docker build -t appdesafio2 .
#Ejecuto el contenedor 
sudo docker run -t -d -p 5050:5050 --name appdesafio2running appdesafio2
#Consulto si el contenedor se esta ejecutando
sudo docker ps

