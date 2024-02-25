# casaOS Dockerfile

This Dockerfile provides a way to create a casaOS image using Docker. casaOS is a hypothetical operating system, and this Dockerfile simulates its installation and setup process.

## Prerequisites

- Docker installed on your system.

## Usage

1. **Clone this repository** to your local machine:
    ```bash
    git clone https://github.com/Zero21t/HomeLab.git
    ```

2. **Navigate to the directory** containing the Dockerfile:
    ```bash
    cd HomeLab
    ```

3. **Build the Docker image** using the provided Dockerfile:
    ```bash
    docker build -t casaos-image .
    ```

4. Once the image is built successfully, you can **run it as a container**:
    ```bash
    docker run --name casaos-container --restart unless-stopped -d casaos-image
    ```

    This command will start a Docker container running casaOS and start on restart of machine.

## Additional Information

- **Dependencies:**
  - This Dockerfile is based on Ubuntu 22.04 and installs additional dependencies such as `curl` and `net-tools`.
  - casaOS is installed by fetching the installation script using `curl` and then running it with `bash`.
  - After installation, the casaOS service is enabled using `systemctl`.
- **Default Command:** The default command when running the container is to display the status of the casaOS service.

## Notes

- This Dockerfile is for demonstration purposes and simulates the installation process of casaOS. Adjustments may be needed for a real-world scenario.
- Ensure that Docker is properly configured on your system to run Docker commands without sudo privileges.
