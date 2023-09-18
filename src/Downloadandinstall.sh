#Check if directory exists
if [ -d "Scripts" ]; then
	echo "Scripts does exist."
else
	mkdir Scripts
fi

cd Scripts
if [ -d "LGSbundle" ]; then
	echo "LGSbundle does exist."
else
	mkdir LGSbundle
fi

if [ ! -d "/Applications/Logitech" ]; then
	echo "Need to run installation scripts."
	#cd to directory.
	cd Scripts/LGSbundle
	#Download with the installer, SSL forced for security, to our zip
	curl -fSSL -o https://download01.logi.com/web/ftp/pub/techsupport/gaming/LogitechSetup_9.02.22.zip LogiSetup_v9.zip
	#Unzip the zip file.
	unzip LogiSetup_v9.zip
	#Run the installer directly from executable, and then immediately update the progress file, as the wait command wouldn't work, due to the installer still being open when prompted to restart.
	zsh "LogitechGamingInstaller.app/Contents/MacOS/LogitechGamingInstaller") & echo "installed" > progress.txt
	echo "You are being prompted to restart by the installer, please do so."
else 
    echo "Should already be installed."
    mv /Applications/Logitech /Scripts/LGSbundle/Logitech
    
    






