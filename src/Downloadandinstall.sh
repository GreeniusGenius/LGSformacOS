
#Check if directory exists
if [ -d "Scripts" ]; then
	echo "Scripts does exist."
fi
	mkdir Scripts
done

cd Scripts
if [ -d "LGSbundle" ]; then
	echo "LGSbundle does exist."
fi
	mkdir LGSbundle
done

curl -fSSL -o https://download01.logi.com/web/ftp/pub/techsupport/gaming/LogitechSetup_9.02.22.zip Scripts/LGSbundle


