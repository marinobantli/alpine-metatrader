#!/bin/ash
export WINEPREFIX=$Prefix

run_MT4() {
    if [ ! -d "$Prefix/drive_c/Program Files (x86)/MetaTrader 4/" ]; then
        echo "Launching MT4 for the first time. Launching MT4 install script..."
        ./opt/mt4setup.sh
    else
        echo "Launching MT4..."
        wine "$Prefix/drive_c/Program Files (x86)/MetaTrader 4/terminal.exe" &
    fi
}

run_MT5() {
    if [ ! -d "$Prefix/drive_c/Program Files/MetaTrader 5/" ]; then
        echo "Launching MT5 for the first time. Launching MT5 install script..."
        ./opt/mt5setup.sh
    else
        echo "Launching MT5..."
        wine "$Prefix/drive_c/Program Files/MetaTrader 5/terminal64.exe" &
    fi
}

case $MTVers in
    "4")
        run_MT4;;
    "5")
        run_MT5;;
    "both")
        run_MT4
        run_MT5;;
    "")
        echo "No MT version specified. Specify either '4', '5' or 'both' in the env-variable 'MTVers'"
esac
wait $!