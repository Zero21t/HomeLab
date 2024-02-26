FROM ubuntu:22.04

#dependencies
RUN apt update -y
RUN apt-get install -y apt-utils

#casaOS
RUN curl -fsSL https://get.casaos.io
RUN systemctl start casaos.service

CMD [ "systemctl status casaOS.service" ]
