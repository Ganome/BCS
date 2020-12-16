## Activity File: Variables and If Statments


To complete this activity, you will create variables and if statements that satisfy given requirements and use them in your script.

Note that many of the commands duplicate the script we wrote last class. Feel free to modify that one to accomplish this, or challenge yourself to do it again by remembering the commands.

### Reference

Consult this list of bash conditional operators while completing the activity:

- `=` : Checks if two items are `equal`.

- `!=` : Checks if two items are `not equal`.

- `-gt` : Checks if an integer is `greater than` another.

- `-lt` : Checks if an integer `less than` another.

- `-d /path_to/directory` : Checks for existence of a directory.

- `&&` : Both conditions have to be true to run.

- `||` : One condition has to be true to run.


#### Instructions

1. Create a variable to hold the path of your output file: `~/research/sys_info.txt`

2. Create an `if` statement that checks for the existence of the `~/research` directory.

    - If the directory exists, do nothing. If the directory does not exist, create it.

3. Create an `if` statement that checks for the existence of the file `~/research/sys_info.txt`.

    - If the file does not exist, do nothing.

    - If the file _does_ exist, remove it. (This will ensure that the script always creates a new file)

4. Have your script put these values (beware of `>` versus `>>`) in your output file (using your variable name)
    - Hostname
    - Ip address
    - Uname information
    - Memory information (`free` command)
    - Top 10 memory utilizing processes

#### Bonus

1. Update the name of your file to include the date and time when the script was run (automatically generated, not you manually typing it in)

2. Check how many files anywhere in the `/home` directory have permissions of `755` and save that number to a variable. Then put that number in your file with some explanatory text.

3. Protect the script from root! Create an `if` statement that checks if the script was run using `sudo`.

    - If it was run with `sudo`, exit the script with a message that tells the user not to run the script using `sudo`.
    
    - Note: this will break the bonus item above, so feel free to do them separately

