FROM ubuntu:22.04

#dependencies
RUN apt update -y
RUN apt install curl -y
RUN apt install net-tools -y

#casaOS
RUN sudo curl -fsSL https://get.casaos.io
RUN sudo systemctl enable casaOS.service

CMD [ "systemctl status casaOS.service" ]
