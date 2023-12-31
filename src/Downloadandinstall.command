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
	echo "Once the install is complete, and you have restarted your computer, simply rerun the script again, and it will pick up from the correct place."
	open $HOME/Scripts/LGSbundle/LogitechGamingInstaller.app/Contents/MacOS/LogitechGamingInstaller
	echo "You are being prompted to restart by the installer, please do so."
else 
    echo "LGS Installer has already succeeded, we will now move folders appropriately."
    cp -r "/Applications/Logitech/" "$HOME/Scripts/LGSbundle"
	curl -fSSL "https://github.com/GreeniusGenius/LGSformacOS/raw/main/build/LGS.shpt" -o "$HOME/Scripts/LGSbundle/LGS.shpt"
	curl -fSSL "https://github.com/GreeniusGenius/LGSformacOS/raw/main/build/LGS.command" -o "$HOME/Scripts/LGSbundle/LGS.command"
	chmod +x $HOME/Scripts/LGSbundle/LGS.command
	zsh $HOME/Scripts/LGSbundle/LGS.command
    echo "Opened"
    echo "In the future, simply paste `$HOME/Scripts/LGSbundle/LGS.command` into a terminal window."
fi

    
    







