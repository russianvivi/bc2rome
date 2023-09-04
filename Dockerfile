FROM i386/debian:bookworm-slim

WORKDIR /project

RUN export DEBIAN_FRONTEND=noninteractive \
 && dpkg --add-architecture i386 \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
      xvfb \
      libgl1-mesa-glx:i386 \
      ca-certificates \
      unrar-free \
      winbind \
      x11vnc \ 
      wget \
      gnupg2 \
      unzip \
      xorg \
      curl \
      cabextract \
 && useradd -m -s /sbin/nologin bfbc2

RUN wget https://dl.winehq.org/wine-builds/winehq.key -O - | apt-key add - \
 && echo "deb https://dl.winehq.org/wine-builds/debian bookworm main" > /etc/apt/sources.list.d/winehq.list \
 && wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_12/Release.key -O - | apt-key add - \
 && apt-get update \
 && apt-get install -y --no-install-recommends winehq-stable \
 && wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks -O /usr/bin/winetricks \
 && chmod +rx /usr/bin/winetricks

COPY ./bc2rome.sh /project/bc2rome.sh

RUN chown bfbc2:bfbc2 -R /project \
    && chmod +x /project/bc2rome.sh

RUN setcap cap_net_raw+epi "$(readlink -f "/usr/bin/wine-preloader")"

USER bfbc2

RUN mkdir -p ~/myapp/prefix

ENV export WINEPREFIX=$HOME/myapp/prefix \
export WINEARCH=win32 \
export WINEPATH=$HOME/myapp \ 
wineboot --init

RUN wget -qO /project/Bc2emu_V09.rar "https://sourceforge.net/projects/battlefieldbadcompany2mase/files/Bc2emu_V09.rar/download#" \
    && unrar x /project/Bc2emu_V09.rar /project \
    && rm -rf /home/bfbc2/server/Bc2emu_V09.rar \
    && mv /project/Bc2emu /project/R34_Full 
    
RUN wget "https://veniceunleashed.net/files/rome.zip" \
    && rm /project/R34_Full/dinput8.dll \
    && unzip rome.zip \
    && mv /project/dinput8.dll /project/R34_Full/dinput8.dll \
    && rm -rf /project/rome.zip

CMD ["./bc2rome.sh"]
