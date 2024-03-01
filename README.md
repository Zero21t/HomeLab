# casaOS Installation

This repository follows my personal steps and installation script for setting up and running CasaOS on a fresh new installation of ubuntu.

## Prerequisites

- Following step installs docker and tools that CasaOS will need 
- skip if tools are preinstalled

1. **Clone this repository** to your local machine:
    ```bash
    git clone https://github.com/Zero21t/HomeLab.git
    ```

2. **Navigate to the directory** with installation scripts:
    ```bash
    cd HomeLab
    ```

3. **modify and run Tool Script** :
    ```bash
    sudo chmod +x Tools.sh
    ./Tools.sh
    ```

## Usage

- Install CasaOS

1. **CasaOS installation:**
    ```bash
    curl -fsSL https://get.casaos.io | sudo bash
    ```

- Now follow CasaOS Installation



## Additional Information

- **Dependencies:**
  - This Dockerfile is based on Ubuntu 22.04 and installs additional dependencies such as `curl` and `net-tools`.
  - casaOS is installed by fetching the installation script using `curl` and then running it with `bash`.
  - After installation, the casaOS service is enabled using `systemctl`.
- **Default Command:** The default command when running the container is to display the status of the casaOS service.
