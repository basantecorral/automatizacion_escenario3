#!/bin/bash

#Creación de red y contenedores Docker

sudo docker network create --subnet=172.70.0.0/16 red_script
sudo docker run -d -it --network="red_script" --name m11 alpine
sudo docker run -d -it --network="red_script" --name m22 alpine
sudo docker run -d -it --network="red_script" --name switch_script abasante/switch_escenario3:v2 
sudo docker run -d -it --network="red_script" --name arpspoofer_script abasante/arpspoof-attacker

#Parada de los contenedores creados

sudo docker stop m11 m22 switch_script arpspoofer_script
echo "--------------------------"
echo "Red y contenedores creados"
echo "Para arrancar el escenario ejecuta start.sh."
echo "Para pararlo stop.sh"
echo "Para eliminarlo delete.sh"