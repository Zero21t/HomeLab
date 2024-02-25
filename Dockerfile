FROM ubuntu:22.04

#dependencies
RUN apt update -y
RUN apt install curl -y
RUN apt install net-tools -y
RUN apt-get install -y apt-utils

#casaOS
RUN curl -fsSL https://get.casaos.io | bash
RUN sudo systemctl enable casaOS.service

CMD [ "systemctl status casaOS.service" ]
