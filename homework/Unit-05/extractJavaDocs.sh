#!/bin/bash
#this script will extract everything from the TarDocs file except for the Java Folder
tar czvvf Javaless_Docs.tar.gz --exclude='Documents/Java' TarDocs
