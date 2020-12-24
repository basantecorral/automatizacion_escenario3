#!/bin/bash

#Eliminación de red y contenedores Docker

sudo docker rm m11 m22 switch_script arpspoofer_script
sudo docker network rm red_script
echo "Escenario eliminado"
