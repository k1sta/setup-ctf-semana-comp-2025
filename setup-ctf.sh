#!/bin/bash

# Changing shell (sh in 2025 wtf?)
chsh -s $(which bash)

# Creating directory
mkdir programas-ctf
cd programas-ctf

# Downloads
pip3 install pycryptodome pwn sage
wget "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.1_build/ghidra_11.3.1_PUBLIC_20250219.zip" -O ghidra.zip
wget "https://download.oracle.com/java/24/latest/jdk-24_linux-x64_bin.tar.gz"
wget "https://portswigger.net/burp/releases/download?product=community&version=2025.2.3&type=Linux" -O burp
wget "https://github.com/pwndbg/pwndbg/releases/download/2025.02.19/pwndbg_2025.02.19_x86_64-portable.tar.xz" -O pwndbg.tar.xz


# Decompress
unzip ghidra.zip
tar -xvzf jdk-24_linux-x64_bin.tar.gz
tar -xvf pwndbg.tar.xz

export PATH="$PATH:$(pwd ./ghidra_11.3.1_PUBLIC/ghidraRun):$(pwd ./pwndbg/bin/pwndbg)"
export JAVA_HOME="$(pwd jdk-24)/jdk-24"
./ghidra_11.3.1_PUBLIC/ghidraRun

chmod +x ./burp; ./burp
