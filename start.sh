#!/bin/bash

#Arranca el escenariio

sudo docker start m11 m22 switch_script arpspoofer_script

sudo docker exec --privileged m11 route add -net 172.70.0.0 netmask 255.255.0.0 gw 172.70.0.4
sudo docker exec --privileged m22 route add -net 172.70.0.0 netmask 255.255.0.0 gw 172.70.0.4

echo "Escenario arrancado"