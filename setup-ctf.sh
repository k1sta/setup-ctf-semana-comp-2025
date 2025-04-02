#!/bin/bash

# Downloads
pip3 install pycryptodome pwn sage
wget "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.1_build/ghidra_11.3.1_PUBLIC_20250219.zip" -O ghidra.zip
wget "https://download.oracle.com/java/24/latest/jdk-24_linux-x64_bin.tar.gz" -o jdk.tar.gz
wget "https://portswigger.net/burp/releases/community/latest" -o burp.sh

# Decompress
unzip ghidra.zip
tar -xvzf jdk.tar.gz

echo $(pwd jdk-24) | ./ghidra_11.3.1_PUBLIC/ghidraRun

chmod +x ./burp.sh; ./burp.sh
