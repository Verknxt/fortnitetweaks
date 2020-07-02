# sleep
sleep 0.500

# console 
cat << "EOF"
    ______           __        _ __     ______                    __       
   / ____/___  _____/ /_____  (_) /____/_  __/      _____  ____ _/ /_______
  / /_  / __ \/ ___/ __/ __ \/ / __/ _ \/ / | | /| / / _ \/ __ `/ //_/ ___/
 / __/ / /_/ / /  / /_/ / / / / /_/  __/ /  | |/ |/ /  __/ /_/ / ,< (__  ) 
/_/    \____/_/   \__/_/ /_/_/\__/\___/_/   |__/|__/\___/\__,_/_/|_/____/  
                                                                           
EOF

# gameusersettings file
GAMEUSERSETTINGS_FILE=/data/data/com.epicgames.fortnite/files/UE4Game/FortniteGame/FortniteGame/Saved/Config/Android/GameUserSettings.ini 2>> /data/media/0/fortnitetweaks.log;

# clean up previous installations
sleep 0.1000
echo - cleaning up previous installs;
rm /data/media/0/fortnitetweaks.log 2>> /data/media/0/fortnitetweaks.log;

# set permissions
sleep 0.1500
echo - setting permissions;
chmod 0777 $GAMEUSERSETTINGS_FILE 2>> /data/media/0/fortnitetweaks.log;

# enable magisk hide
sleep 0.2000
echo - enabling magisk hide;
magiskhide enable 2>> /data/media/0/fortnitetweaks.log;

# add fortnite to magisk hide
sleep 0.2500
echo - adding fortnite to magisk hide;
magiskhide add com.epicgames.fortnite 2>> /data/media/0/fortnitetweaks.log;

# disable usb debugging
sleep 0.3000
echo - disabling usb debugging;
settings put global adb_enabled 0 2>> /data/media/0/fortnitetweaks.log;

# rename twrp folder
sleep 0.3500
echo - renaming twrp folder;
mv /data/media/0/TWRP /data/media/0/PRWT 2>> /data/media/0/fortnitetweaks.log;

# rename magisk patched img
sleep 0.4000
echo - renaming magisk patched img;
mv /data/media/0/Download/magisk_patched.img /data/media/0/Download/ksigam_dehctap.img 2>> /data/media/0/fortnitetweaks.log;

# force close fortnite
sleep 0.4500
echo - force closing fortnite;
am kill com.epicgames.fortnite 2>> /data/media/0/fortnitetweaks.log;

# modify the gameusersettings.ini file
sleep 0.5000
echo - modyfing the gameusersettings.ini file;
sed -i -e 's/MobileFPSMode=Mode_20Fps/MobileFPSMode=Mode_60Fps/g' $GAMEUSERSETTINGS_FILE 2>> /data/media/0/fortnitetweaks.log
sed -i -e 's/MobileFPSMode=Mode_30Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE 2>> /data/media/0/fortnitetweaks.log
sed -i -e 's/MobileFPSMode=Mode_45Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE 2>> /data/media/0/fortnitetweaks.log
sed -i -e 's/MobileFPSMode=Mode_60Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE 2>> /data/media/0/fortnitetweaks.log
sed -i -e 's/MobileFPSMode=Mode_120Fps/MobileFPSMode=Mode_60Fps/g'  $GAMEUSERSETTINGS_FILE 2>> /data/media/0/fortnitetweaks.log

# sleep
sleep 0.5500
