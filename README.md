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
  To download the BC2Rome Docker image, use the docker pull command
  ```
  docker pull russianvivi/bc2rome:latest
  ```

## Managing-Server
Once the Docker image is downloaded, you can start the container to run the server. 
```
sudo docker container run -p 19026:19026/tcp -p 19021:19021/tcp -p 19567:19567/udp -p 18390:18390/udp -p 5900:5900/tcp -p 80:80/tcp -v "./Instance:/project/Instance" bc2rome:latest
```
To determ the container id run:
```
sudo docker container ls
```
Use Container ID to kill
```
sudo docker container kill <ID>
```
## Accessing-Server (Client)
It's essential to ensure that you have the latest game update installed and [ProjectRome](https://veniceunleashed.net/downloads)
After downloading Project Rome, follow these steps:

   - Unzip the downloaded file to extract its contents
   - Locate the file named dinput8.dll from the extracted files
   - Place the dinput8.dll file into your game directory

## Game-Server-Configuration
You can configure a lot on R34, for comprehensive documentation, you can download DOCS [here](https://mega.nz/file/zjhkTbqZ#5kbq4FnHke9-C7IzU4m28fJ0MzbCfZ30cJiPxFXagWk) (not uploaded by me).
However, here's a quick overview of the basic configuration steps:
- To Change Server Name open ./Instance/ServerOptions with a text editor:
```
nano ./Instance/ServerOptions
```
Name= <This refers to the name of your game server, which will be displayed in the server browser.>
- Change Map rotation
  Open ./Instance/maplist
```
nano ./Instance/mapslist
```
See all Map names in DOCS, Map always starts with Levels/
## Future-Features
- Change Gamemode
- Integrate some kind of Admin Tool

## Special Thanks to
- [VeniceUnleashed](https://veniceunleashed.net/) for Project Rome (former Emulator Nexus) and all their great projects
- [flyer8472](https://sourceforge.net/u/flyer8472/profile/) for providing R34 Files
- DICE for this awesome game
