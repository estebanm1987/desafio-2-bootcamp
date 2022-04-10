#!/bin/bash
#Creo carpeta tempdir
mkdir tempdir
#Copio contenido de static y templates dentro de tempdir, tambien el archivo de python
cp -r static tempdir
cp -r templates tempdir
cp desafio2_app.py tempdir

echo "hello world"
