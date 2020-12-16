## Instructions for Launching Your Windows Lab

Follow these instructions to log into your lab and launch the nested virtual machines. 

### Step 1: Log into Azure Labs

1. Login in to Azure and start your lab (if its not already running)

1. Use RDP to log into your Windows Azure lab VM. 

    - Credentials for the Windows RDP Host machine:
        - Username: `azadmin`
        - Password: `p4ssw0rd*`

2. Launch the Hyper-V Manager by double-clicking the **Hyper-V Manager** shortcut on the desktop

Understand that Hyper-V Manager is equivalent to the VirtualBox Manager. It manages and launches virtual machines within our Azure environment.


### Step 2: Launch and Prepare the Windows 10 Virtual Machine

1.  Right click the **Windows 10** machine and click **Start**. 

    - Credentials for the Windows 10 machine for today's activities:
        - Username: `sysadmin`
        - Password: `cybersecurity`
    - Note that by default a different user might be selected. If you need to change this, choose the "Other User" icon in the bottom left
    - If prompted to reset the password please do so. Make sure you remember what you choose. A good option might be `Cybersecurity1`

2. Inside the Windows 10 Hyper-V machine launch a command prompt (click the Start button and type in "CMD")
3. On the command line run `slmgr.vbs /rearm`
4. Click *OK* for the window that pops up
5. Reboot that Hyper-V Windows 10 machine by going to *Start*, clicking the *Power* button, then *Restart*
6. When the machine is back up, log back in to it (remember you might have changed the password)


### Step 3: Launch and Prepare the Windows Server Machine

1.  Right click the **Windows Server** machine and click **Start**. 

    - Credentials for the Windows 10 machine for today's activities:
        - Username: `sysadmin`
        - Password: `p4ssw0rd*`
    - Note that by default a different user might be selected. If you need to change this, choose the "Other User" icon in the bottom left
    - If prompted to reset the password please do so. Make sure you remember what you choose. A good option might be `Cybersecurity1`

2. Inside the Windows Server Hyper-V machine launch a command prompt (click the Start button and type in "CMD")
3. On the command line run `slmgr.vbs /rearm`
4. Click *OK* for the window that pops up
5. Reboot that Hyper-V Windows Server machine by going to *Start*, clicking the *Power* button, then *Restart*
6. If you get prompted, choose a reason for the reboot (*Other(Planned)* is fine)
6. When the machine is back up, log back in to it (remember you might have changed the password)