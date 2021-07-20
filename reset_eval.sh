#!/bin/bash
# reset eval for all jetbrains product (Linux)
# chmod 777 ./reset_jetbrains_eval.sh
# sudo crontab -e -> insert at the end of the file: 0 10 1-7 * 1 * /path/to/reset_jetbrains_eval.sh

OS_NAME=$(uname -s)
if [[ $OS_NAME == "Linux" ]]; then
        rm -rf ~/.config/JetBrains/${PRD}*
        rm -rf ~/.java/.userPrefs/jetbrains/
	rm -rf ~/.local/share/JetBrains
	rm -rf ~/.cache/JetBrains
        rm -rf ~/.java/.userPrefs/prefs.xml
else
        echo 'Your OS is not Linux. Failed reset eval.'
        exit
fi

echo 'Done.'
