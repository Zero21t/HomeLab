FROM ubuntu:22.04

#dependencies
RUN apt update -y
RUN apt-get install -y apt-utils

#casaOS
CMD [ "sudo", "curl", "-fsSL", "https://get.casaos.io", "|", "sudo", "bash" ] 
RUN sudo systemctl start casaos.service

CMD [ "systemctl status casaOS.service" ]
