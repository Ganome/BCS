#!/bin/bash
#This script will try to SSH into the Web[1-3] VM's and cause authentication errors.

for ((i = 0 ; i < 50 ; i++)); do
	  ssh azadmin@10.0.0.[5,6,8]
  done 
