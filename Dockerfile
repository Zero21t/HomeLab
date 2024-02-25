FROM ubuntu:22.04

#dependencies
RUN apt install curl -y
RUN apt install net-tools -y
RUN apt-get install -y apt-utils
RUN apt update -y


#casaOS
RUN curl -fsSL https://get.casaos.io | bash
RUN sudo systemctl enable casaOS.service

CMD [ "systemctl status casaOS.service" ]
