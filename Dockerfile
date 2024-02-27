# Use a base image
FROM ubuntu:latest

# Set environment variables
ENV CASAOS_VERSION 1.0
WORKDIR /casaos
# Update packages and install dependencies
RUN apt-get update && \
    apt-get install -y \
        curl \
        sudo \
        runit\
        # Add other dependencies as needed \
    && rm -rf /var/lib/apt/lists/*

# Expose any ports required by CasaOS
EXPOSE 8080:443

# Specify the command to run CasaOS (adjust as needed)
COPY CMD.sh /casaos/
RUN chmod +x CMD.sh
CMD [ "bash" ]