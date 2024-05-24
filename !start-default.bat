@echo off
::Set Watchdog title
title %wat% defaultServerWatchDog
echo (%time%) defaultServer starting.
:watchdog
start "" /wait /high "DayZServer_x64.exe" "-mod=@CF;@Dabs Framework;@VPPAdminTools;@Universal Api;@MLBeta;@Inventory Move Sounds;@Location Text;@SkyZ - Skybox Overhaul;@Namalsk Island;@Namalsk Survival;" "-servermod=" "-profiles=profiles/defaultProfile" -config=serverDZ.cfg -port=2303 -cpuCount=6 -dologs -adminlog -netlog -freezecheck
echo (%time%) defaultServer closed or crashed, restarting.
goto watchdog