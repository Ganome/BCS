## Solution Guide: My First Shell Script

- The first step is to navigate into the `first_shell_script` directory. To do this, run the following commands:
 
  - `cd /03-student/day3/`
  - `cd first_shell_script`
       
- Within this directory is a log file called `LogA.txt`.  

- We will use `nano` to create a shell script called `Log_analysis.sh`:

  - `nano Log_analysis.sh`
        
- We will place the two commands used in the previous activities inside this file:

      sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > Update1_Combined_Access_logs.txt
      awk '{print $4, $6}' Update1_Combined_Access_logs.txt > Update2_Combined_Access_logs.txt
      
    - Make sure that the first command references `LogA.txt`. 
     
- Save the Nano file using Ctrl+X, then Ctrl+Y and keep the file name.

- Run the shell command with the following:

  - `sh Log_analysis.sh`
        
- Confirm the results are correct by checking the new file called `Update2_Combined_Access_logs.txt`.

  - Within this file should only be the date and username.


#### Bonus:
`curl -s http://ipinfo.io/$1 | grep country | awk -F" " '{print $2}' | sed s/\"//g | sed s/,//`
