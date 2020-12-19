#!/bin/bash
#This script uses wget to generate a bunch of HTTP traffic on the web-VM that is left uncommented

for ((i = 0 ; i < 250 ; i++)); do
	wget 10.0.0.5 #web-1
	#wget 10.0.0.6 #web-2
	#wget 10.0.0.8 #web-3
done
