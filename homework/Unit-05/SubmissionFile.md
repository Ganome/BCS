Week 5 Homework Submission File: Archiving and Logging Data
Please edit this file by adding the solution commands on the line below the prompt.
Save and submit the completed file for your homework submission.


Step 1: Create, Extract, Compress, and Manage tar Backup Archives
create: tar czf archivename.tar.gz [FOLDER/FILEtobearchived]
exract tar xvf archivename.tar.gz
manage (view?) tar tvvf archivename.tar.gz

Command to extract the TarDocs.tar archive to the current directory:
tar xvf TarDocs.tar

Command to create the Javaless_Doc.tar archive from the TarDocs/ directory, while excluding the TarDocs/Documents/Java directory:
tar czvvf Javaless_Docs.tar.gz --exclude='Documents/Java' TarDocs

Command to ensure Java/ is not in the new Javaless_Docs.tar archive:
tar tvvf TarDocs.tar.gz |grep Java

Bonus

Command to create an incremental archive called logs_backup_tar.gz with only changed files to snapshot.file for the /var/log directory:
sudo tar czG snapshot.file -f logs_backup_tar.gz /var/log

Critical Analysis Question

Why wouldn't you use the options -x and -c at the same with tar?
-x is to extract a compressed archive
-c is to compress files into an archive



Step 2: Create, Manage, and Automate Cron Jobs

Cron job for backing up the /var/log/auth.log file:
0 6 * * 3 tar czf /auth_backup.tgz -g /auth_backup.snar /var/log/auth.log #I think they mean the same line as thge homework??
/etc/logrotate.d/auth-log # this is where the logrotate rule is located



Step 3: Write Basic Bash Scripts


Brace expansion command to create the four subdirectories:
mkdir -p ~/Projects/backups/{diskuse,freedisk,freemem,openlist}

Paste your system.sh script edits below:
#!/bin/bash
free -h > /home/sysadmin/Projects/backups/freemem/free_mem.txt
lsof > /home/sysadmin/Projects/backups/diskuse/disk_usage.txt
ps aux > /home/sysadmin/Projects/backups/openlist/open_list.txt
df / -h > /home/sysadmin/Projects/backups/freedisk/free_disk.txt


Command to make the system.sh script executable:
chmod +x system.sh

Optional

Commands to test the script and confirm its execution:
./system.sh && cat freemem/* diskuse/* openlist/* freedisk/*
Bonus

Command to copy system to system-wide cron directory:
sudo cp -r /var/spool/cron .


Step 4. Manage Log File Sizes


Run sudo nano /etc/logrotate.conf to edit the logrotate configuration file.
Configure a log rotation scheme that backs up authentication messages to the /var/log/auth.log.

Add your config file edits below:

/var/log/auth.log {
        weekly
        missingok
        notifempty
        rotate 7
        #compress
        delaycompress
        notifempty
}


Bonus: Check for Policy and File Violations


Command to verify auditd is active:
systemctl status auditctl

Command to set number of retained logs and maximum log file size:
There isnt one!!  just edit /etc/audit/auditd.conf with your favorite editor and find lines "max_log_file =" as well as line "num_logs = "

Add the edits made to the configuration file below:

what edits??  huh?  what are you smoking?


Command using auditd to set rules for /etc/shadow, /etc/passwd and /var/log/auth.log:
ITS NOT AUDITD - ITS AUDUITCTL!!!
sudo auditctl -w FILENAME -p rwa -k KEYPHRASEHERE # -w adds the watch this file, -p means to preserve and rwa is for read,write,attribute checks.


Add the edits made to the rules file below:
## CUSTOM RULES
-w /etc/shadow -p rwa -k hashpass_audit
-w /etc/passwd -p rwa -k userpass_audit
-w /var/log/auth.log -p rwa -k authlog_audit


Command to restart auditd:
sudo systemctl restart auditd

Command to list all auditd rules:
sudo auditctl -l

Command to produce an audit report:
sudo aureport -au #reports authentication attempts - YOU DONT SPECIFY WHICH KIND OF REPORT TO GENERATE

Create a user with sudo useradd	 attacker and produce an audit report that lists account modifications:
#Use command sudo aureport -m ##This shows modifications to accounts report
1. 10/28/2020 11:23:56 1000 UbuntuDesktop pts/0 /usr/sbin/useradd imatotalnewb yes 9632
2. 10/28/2020 11:23:56 1000 UbuntuDesktop pts/0 /usr/sbin/useradd ? yes 9636
3. 10/28/2020 11:23:56 1000 UbuntuDesktop pts/0 /usr/sbin/useradd ? yes 9637


Command to use auditd to watch /var/log/cron:
sudo auditctl -w /var/log/cron #if you dont supply a -p rawx, it will default to -p rwxa

Command to verify auditd rules:
sudo auditctl -l


Bonus (Research Activity): Perform Various Log Filtering Techniques

1. sudo journalctl -o cat -p 3
2. sudo journalctl --disk-usage #this command prints the usage for the ENTIRE log not just the current log
3. sudo journalctl --vacuum-time=2d
4. sudo journalctl -p 0 > /home/student/Priority_High.txt && sudo journalctl -p 2 >> /home/student/Priority_High.txt
5. see USER,crontab OR "@daily sudo journalctl -p 0 > /home/student/Priority_High.txt && sudo journalctl -p 2 > /home/student/Priority_High.txt"
