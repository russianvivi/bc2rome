# BC2Rome Docker Image for Project Rome 

Do you remember the electrifying moments when you first stepped onto the virtual battlefields of Battlefield Bad Company 2, and nostalgia washed over you like a wave? If you've ever yearned to recapture those unforgettable memories by playing it again, you're not alone. My mission is inspired by the allure of nostalgia and the desire to make it effortless for all Battlefield lovers to host a Server.

## Table of Contents

- [Prerequisites](#Prerequisites)
- [Getting Started](#Getting-started)
  - [Verify Docker Installation](#Verify-Docker-Installation)
  - [Pull BC2Rome Docker Image](#Pull-BC2ROME-Docker-Image)
- [Managing Server](#Managing-Server)
- [Accessing Server](#Accessing_Server)
- [Game Server Configuration](#Game-Server-Configuration)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Prerequisites

  -A Linux machine (Ubuntu, CentOS, Debian, etc.)
  -Docker Engine installed (refer to Docker's official installation guide for your Linux distribution)

## Getting-started

### Verify-Docker-Installation

  Open a terminal window.
  To verify that Docker is installed and running, enter the following command:
  ```
  docker --version
  ```
  You should see the Docker version information displayed.
  
### Pull-BC2ROME-Docker-Image
  To download the Battlefield server Docker image, use the docker pull command
    ```
  docker pull russianvivi/bc2rome:latest
    ```

## Managing-Server
Once the Docker image is downloaded, you can start the container to run the server. 
```
sudo docker container run -p 19026:19026/tcp -p 19021:19021/tcp -p 19567:19567/udp -p 18390:18390/udp -p 5900:5900/tcp -p 80:80/tcp -v "./Instance:/project/Instance" bc2rome:latest
```

## Accessing-Server

List and briefly describe the key features of your project.

## Game-Server-Configuration

Explain how others can contribute to your project. Include guidelines for code style, issue reporting, and pull requests.

## License

State the license under which your project is released. For example, you can use the [MIT License](LICENSE) or any other open-source license.

## Acknowledgments

If you want to thank individuals, projects, or libraries that inspired or helped you during the project, you can include them here.
