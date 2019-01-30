#!/bin/bash
#
# Orgit 1.0.0
# Gabriel P.
# Bash
# Script para facilitar la organizacion de repositorios en Linux
#

# Variables
GIT="https://github.com/gpietrafesavieitez"
DIR="$HOME/NetBeansProjects/orgitCloned"

# Primero borro dir
rm -rf $DIR

# Luego creo dir
mkdir -p $DIR/DAM1/COD $DIR/DAM1/COD/Pruebas $DIR/DAM1/PROG $DIR/DAM1/PROG/Boletines $DIR/DAM1/PROG/Pruebas $DIR/DAM1/PROG/Extras

# Clonacion
echo "Clonando repositorios principales, porfavor espere..."
git clone -q $GIT/COD_Pruebas.git $DIR/DAM1/COD/Pruebas
git clone -q $GIT/PROG_Extras.git $DIR/DAM1/PROG/Extras
git clone -q $GIT/PROG_Pruebas.git $DIR/DAM1/PROG/Pruebas
echo "Clonacion de repositorios principales finalizada."

# Loop para clonar boletines concretos
read -p "Introduzca el numero del ultimo boletin creado: " leer
echo "Clonando boletines, porfavor espere..."
for (( i = 1; i <= $leer; i++ )) 
do
	git clone -q $GIT/PROG_Boletin_$i.git $DIR/DAM1/PROG/Boletines/Boletin_$i
done

echo "Clonacion finalizada, gracias por usarme :D"
