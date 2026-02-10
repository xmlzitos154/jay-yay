#!/bin/bash

INSTALL_PATH='/usr/bin/jay'
SOURCE='./jay'

if [[ $EUID -ne 0 ]]; then
   echo "Please run me as sudo."
   exit 1
fi

if [[ ! -f "$SOURCE" ]]; then
    echo FATAL: File 'jay' not found.
    exit 1
fi

chmod +x "$SOURCE"

echo "Installing JAY in $INSTALL_PATH..."
cp -v "$SOURCE" "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

clear
echo "JAY Has been installed!"
echo
read -p "Press any key to exit..."
exit 0
