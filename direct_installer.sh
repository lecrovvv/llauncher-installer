#!/bin/bash

clear

echo "Running directly. Made by \$sudouser"
echo "Choose an option (JDK 21 required):"
echo "1. Install Legacy Launcher"
echo "2. Quit"
echo "3. Install Java 21"

read -p "Your choice: " choice

if [ "$choice" -eq 1 ]; then
    echo "Downloading Legacy Launcher..."

	sudo curl -L -o /usr/local/bin/LegacyLauncher_legacy.jar https://github.com/lecrovvv/llauncher-installer/raw/main/LegacyLauncher_legacy.jar
	
	echo "Adding to Rofi..."
	sudo curl -L -o ~/.local/share/applications/LegacyLauncher.desktop https://github.com/lecrovvv/llauncher-installer/raw/main/LegacyLauncher.desktop
	sudo curl -L -o ~/.local/share/applications/logo.png https://github.com/lecrovvv/llauncher-installer/raw/main/logo.png
	
	echo "Setting permissions..."
    sudo chmod +x /usr/local/bin/LegacyLauncher_legacy.jar
	
	echo "Please restart PC for apply all changes"
    echo "Complete!"
    exit 0
elif [ "$choice" -eq 2 ]; then
    echo "Quiting..."
    exit 0
elif [ "$choice" -eq 3 ]; then
	xdg-open https://openjdk.org/
	exit 0 
else
    echo "Incorrect choice. Please choose 1 or 2."
    exit 1
fi

                                    
                                                                     
                                                                     
                                                                     
                                                                     

