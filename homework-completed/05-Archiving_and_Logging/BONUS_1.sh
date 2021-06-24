#!/bin/bash
#This script is for the BONUS section of part 1: Create an incremental archive called logs_backup.tar.gz that contains only changed files by examining the snapshot.file for the /var/log directory. You will need sudo for this command.
tar cvvzf logs_backup.tar.gz -g logs_backup.snar /var/log > tar.output
