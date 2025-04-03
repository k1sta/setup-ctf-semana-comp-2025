#!/bin/bash

echo "Installing programs with apt"
echo <senha-wks> | sudo -S ls
sudo apt install hexedit nmap wireshark sleuthkit autopsy sagemath -y
sudo python3 -m pip install pycryptodome pwn Pillow
