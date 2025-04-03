#!/bin/bash

# Changing wallpaper
# 1. Save the original wallpaper
# 2. Download the GRIS wallpaper
# 3. Change wallpaper to the downloaded one

echo "Creating directory"
mkdir -p $HOME/bin/programas-ctf
cd $HOME/bin/programas-ctf

echo "Changing shell (sh in 2025 wtf?)"
chsh -s $(which bash)

echo "Downloads"
wget "https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.3.1_build/ghidra_11.3.1_PUBLIC_20250219.zip" -O ghidra.zip -q
wget "https://download.oracle.com/java/24/latest/jdk-24_linux-x64_bin.tar.gz" -O jdk-24.tar.gz -q
wget "https://portswigger.net/burp/releases/download?product=community&version=2025.2.3&type=Linux" -O burp -q
wget "https://github.com/pwndbg/pwndbg/releases/download/2025.02.19/pwndbg_2025.02.19_x86_64-portable.tar.xz" -O pwndbg.tar.xz -q

echo Decompress
unzip ghidra.zip
tar -xvzf jdk-24.tar.gz
tar -xvf pwndbg.tar.xz

echo "Adding variables"
export PATH="/usr/bin:$PATH:$(realpath ./ghidra_11.3.1_PUBLIC/ghidraRun):$(realpath ./pwndbg/bin/pwndbg)"
export JAVA_HOME="$(pwd jdk-24)/jdk-24"

echo "Making the changes persistents"
echo -e "export PATH=$PATH\nexport JAVA_HOME=$JAVA_HOME" >> $HOME/.bashrc
