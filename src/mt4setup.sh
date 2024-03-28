#!/bin/ash
# Copyright 2022, MetaQuotes Ltd.

# MetaTrader download url
URL="https://download.mql5.com/cdn/web/metaquotes.software.corp/mt4/mt4oldsetup.exe"

# Download MetaTrader
echo "Downloading MT4..."
wget $URL

echo "Preparing wineprefix..."
winecfg -v=win10

echo "Launching MT4 installer..."
wine mt4oldsetup.exe \wait

echo "Removing MT4 installer exe..."
rm mt4oldsetup.ex