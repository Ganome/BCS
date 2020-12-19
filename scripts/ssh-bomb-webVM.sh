#!/bin/bash
#This script will try to SSH into the Web[1-3] VM's and cause authentication errors.

for ((i = 0 ; i < 250 ; i++)); do
	  ssh azadmin@10.0.0.5
	  ssh azadmin@10.0.0.6
	  ssh azadmin@10.0.0.8
done 
