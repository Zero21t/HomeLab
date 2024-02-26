FROM ubuntu:Latest

#dependencies
RUN apt-get update && \
    apt-get install -y apt-utils sudo curl

#casaOS
RUN curl -fsSL https://get.casaos.io | sudo bash

CMD [ "systemctl status casaos" ]
