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

echo "Directory have been processed."

if [ ! -d "/Applications/Logitech" ]; then
	echo "Need to run installation scripts."
	#cd to directory.
	cd Scripts/LGSbundle
	#Download with the installer, SSL forced for security, to our zip
	(curl -fSSL "https://download01.logi.com/web/ftp/pub/techsupport/gaming/LogitechSetup_9.02.22.zip" -o "LogiSetup_v9.zip"
	#Unzip the zip file.
	unzip LogiSetup_v9.zip
	#Run the installer directly from executable, and then immediately update the progress file, as the wait command wouldn't work, due to the installer still being open when prompted to restart.
	zsh "LogitechGamingInstaller.app/Contents/MacOS/LogitechGamingInstaller"
	echo "You are being prompted to restart by the installer, please do so."
else 
    echo "LGS Installer has already succeeded, we will now move folders appropriately."
    mv /Applications/Logitech /Scripts/LGSbundle
    curl -fSSL -o https://github.com/GreeniusGenius/LGSformacOS/tree/main/build/LGS.app /Applications/LGS.app
    open -a /Applications/LGS.app
    echo "It worked!"
fi

    
    






