FROM ubuntu:22.04

#dependencies
RUN apt update -y
RUN apt-get install -y apt-utils sudo

#casaOS
RUN curl -fsSL https://get.casaos.io | sudo bash

CMD [ "systemct; status casaos" ]
