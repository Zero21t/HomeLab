FROM ubuntu:22.04

#dependencies
RUN apt install update
RUN apt install curl
RUN apt install net-tools

#casaOS
RUN curl -fsSL https://get.casaos.io | sudo bash
RUN sudo systemctl enable casaOS.service

CMD [ "systemctl status casaOS.service" ]
