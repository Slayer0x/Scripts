#!/bin/bash
#By Slayer
if [ -z $1 ];then
	echo " You must specify the file containing the IP addresses: bash ipfinder.sh ipfile.txt"
else
	if  [[ -f geolocation.txt ]];then
		rm geolocation.txt
	fi
	
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t ####################################################" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t	  Geolocation finder v1.0 Pocket Edition        " >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t ####################################################" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo -e "\t" >> geolocation.txt
	echo "[+] Finding Information..."
	while read -r IP;do
		#If  you don´t have a valid API Key you can get it here: https://ipgeolocation.io/.
		curl -s "https://api.ipgeolocation.io/ipgeo?apiKey="YOUR API KEY HERE"&ip="$IP >> geolocation.txt
		echo -e "\n" >> geolocation.txt
		echo -e "\t" >> geolocation.txt
		echo -e "\t#################################################################" >> geolocation.txt
		echo -e "\t" >> geolocation.txt
	done < $1
	echo "[+] The results have been stored in .\geolocation.txt"
fi
