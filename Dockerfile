FROM ubuntu:latest

#dependencies
RUN apt update -y
RUN apt-get install -y apt-utils

# Install CasaOS using curl
RUN curl -fsSL https://get.casaos.io | bash

# Expose the necessary ports
EXPOSE 80
EXPOSE 443

# Start CasaOS
CMD ["casaos"]