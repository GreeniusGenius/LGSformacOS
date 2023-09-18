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
	cd "$HOME/Scripts/LGSbundle"
	#Download with the installer, SSL forced for security, to our zip.
	curl -fSSL "https://download01.logi.com/web/ftp/pub/techsupport/gaming/LogitechSetup_9.02.22.zip" -o "$HOME/Scripts/LGSbundle/LogitechSetup_9.02.22.zip"
	#Unzip the zip file.
	echo "$PWD is working directory."
	echo "$HOME is home directory."
	
	unzip -o "LogitechSetup_9.02.22.zip"
	#Run the installer directly from executable.
	chmod +x $HOME/Scripts/LGSbundle/LogitechGamingInstaller.app/Contents/MacOS/LogitechGamingInstaller
	open $HOME/Scripts/LGSbundle/LogitechGamingInstaller.app/Contents/MacOS/LogitechGamingInstaller
	echo "You are being prompted to restart by the installer, please do so."
else 
    echo "LGS Installer has already succeeded, we will now move folders appropriately."
    cp -r "/Applications/Logitech/" "$HOME/Scripts/LGSbundle"
    curl -fSSL "https://raw.githubusercontent.com/GreeniusGenius/LGSformacOS/tree/43174ba89f84a6383083c51361600db5ad4bd073/build/LGS.app" -o "/Applications/LGS.app"
    open -a "Applications/LGS.app"
    echo "It worked!"
fi

    
    







