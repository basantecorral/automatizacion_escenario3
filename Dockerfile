#Dockerfile para contenedor SWITCH
FROM ubuntu
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install net-tools inetutils-ping traceroute
RUN apt-get -y install python3 python3-pip
RUN pip3 install scapy
RUN pip3 install argparse
WORKDIR arp-spoof-detector
ADD arp-spoof-detector /arp-spoof-detector
CMD python3 arp-spoof-detector.py -i eth0
