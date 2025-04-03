#!/bin/bash

while IFS= read -r line; do
    	sshpass -p "convidado" scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ./sudo-setup-ctf-instalar-pacotes.sh convidado@146.164.41.$line:/home/convidado/Downloads/
	sshpass -p "convidado" scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ./setup-ctf.sh convidado@146.164.41.$line:/home/convidado/Downloads/
    	sshpass -p "convidado" ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null convidado@146.164.41.$line '/home/convidado/Downloads/setup-ctf.sh'
    
    	sshpass -p <senha-wks> ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null wks@146.164.41.$line '/home/convidado/Downloads/sudo-setup-ctf-instalar-pacotes.sh'
done < ips.txt
