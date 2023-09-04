# BC2Rome Docker Image for Project Rome (unoffical)

 Make it effortless for all Battlefield lovers to host a game server for [Project Rome](https://veniceunleashed.net/)

## Table of Contents

- [Prerequisites](#Prerequisites)
- [Getting Started](#Getting-started)
  - [Verify Docker Installation](#Verify-Docker-Installation)
  - [Pull BC2Rome Docker Image](#Pull-BC2ROME-Docker-Image)
- [Managing Server](#Managing-Server)
- [Accessing Server](#Accessing_Server)
- [Game Server Configuration](#Game-Server-Configuration)
- [Future Features](#Future-Features)
- [Credits](#Credits)

## Prerequisites

  - A Linux machine (Ubuntu, CentOS, Debian, etc.)
  - Docker Engine installed (refer to Docker's official installation guide for your Linux distribution)

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
To stop the running container use 
```
sudo docker container kill
```
## Accessing-Server (Client)
It's essential to ensure that you have the latest game update installed and [ProjectRome](https://veniceunleashed.net/downloads)
After downloading Project Rome, follow these steps:

   Unzip the downloaded file to extract its contents.
   Locate the file named dinput8.dll from the extracted files.
   Place the dinput8.dll file into your game directory.

## Game-Server-Configuration

Explain how others can contribute to your project. Include guidelines for code style, issue reporting, and pull requests.

## Future-Features
- Change Gamemode
- Integrate some kind of Admin Tool

## Special Thanks to
- VeniceUnleashed for Project Rome (former Emulator Nexus) and all their great projects
- [flyer8472](https://sourceforge.net/u/flyer8472/profile/) for providing R34 Files
- DICE for this awesome game
