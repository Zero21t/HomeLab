FROM ubuntu:22.04

#dependencies
RUN apt-get update -y
RUN apt install curl -y
RUN apt install net-tools -y

#casaOS
RUN curl -fsSL https://get.casaos.io | sudo bash
RUN sudo systemctl enable casaOS.service

CMD [ "systemctl status casaOS.service" ]
