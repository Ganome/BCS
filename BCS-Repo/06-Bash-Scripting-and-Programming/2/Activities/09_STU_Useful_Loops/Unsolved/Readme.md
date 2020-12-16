## Activity File: Useful Loops

In the previous activity we created `for loops`. Now we will take our loops a bit further and use them to do useful things in our scripts and in the command line.

We can use loops to do things like:

- Loop through all the users in the system and take an action for each one.
- Loop through the results of a find command and take action on each item found.
- Loop through a list of packages and check if they are installed.
- Loop through a list of files, check their permissions and change them if needed.
- Loop through a list of files and create a cryptographic hash of each file.

In this activity, we will take a look at a creating a few useful loops you can add to your sys_info.sh script as well as loops you can use directly in the command line. If you'd rather create a new script that's fine too.

### Instructions

1. Put the paths of the `shadow` and `passwd` files (from the `/etc` directory) in a list.

2. Create a `for` loop that prints out the permissions of each file in your file list.

3. Put the final touches on your script by adding comments for each action your script completes.

### Bonus One

1. Create a `for` loop that checks the `sudo` abilities of each user that has a home folder on the system.

### Bonus Two

1. Create a list that contains the commands `date`,  `uname -a`, and `hostname -s`.

2. In your script, use a `for` loop that prints out "The results of the _______ command are:" along with the results of running the command.
