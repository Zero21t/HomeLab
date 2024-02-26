FROM ubuntu:22.04

#dependencies
RUN apt-get update && \
    apt-get install -y apt-utils sudo systemd

#casaOS
RUN wget -qO- https://get.casaos.io | sudo bash

CMD [ "systemctl start casaos" ]
