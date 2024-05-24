@echo off
::Set Watchdog title
title %wat% NamalskServerWatchDog
echo (%time%) NamalskServer starting.
:watchdog
start "" /wait /high "DayZServer_x64.exe" "-mod=@CF;@Dabs Framework;@VPPAdminTools;@Universal Api;@MLBeta;@Namalsk Island;@Namalsk Survival;@Inventory Move Sounds;@Location Text;@SkyZ - Skybox Overhaul;" "-servermod=" "-profiles=profiles/NamalskProfile" -config=serverDZ-namaslk.cfg -port=2302 -cpuCount=6 -dologs -adminlog -netlog -freezecheck
echo (%time%) NamalskServer closed or crashed, restarting.
goto watchdog