#! /bin/bash
winetricks dinput8
winetricks vcrun2005
winetricks vcrun2008
winetricks vcrun2010
export DISPLAY=:1
Xvfb :1 -screen 0 800x600x16 &
x11vnc -bg -reopen -forever
cd /project/R34_Full
wine Frost.Game.Main_Win32_Final.exe -serverInstancePath "Instance/" -mapPack2Enabled 1 -port 19567 -timeStampLogNames -region OC -heartBeatInterval 20000
