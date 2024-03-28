#!/bin/ash
# Copyright 2022, MetaQuotes Ltd.

# MetaTrader download url
URL="https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe"

# Download MetaTrader
echo "Downloading MT5..."
wget $URL

echo "Preparing wineprefix..."
winecfg -v=win10

echo "Launching MT5 installer..."
wine mt5setup.exe \wait

echo "Removing MT5 installer exe..."
rm mt5setup.exe