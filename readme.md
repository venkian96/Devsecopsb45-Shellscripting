# Repo for Devsecops B45 Shell Scripting classes

## AWS creentials as Env Variables for Bash shell
export AWS_ACESS_KEY_ID='xxxxx'
export AWS_SECRET_ACCESS_KEY='YYYy'

## AWS Credentials as Env variables for powershell
$Env: AWS_ACESS_KEY_ID='xxxxx'
$Env: AWS_SECRET_ACCESS_KEY='YYYy'

$#-caliculates the number of args/parms given to a script.
$@- Assign all Args to same variable.
$*- Assign all args to Same variable.
"$*"- If the args passed has space.
$?- this will 

# interview question
What is meant by 2>&1?
Ans: 2>&1 means redirect STDERR to STDIN

Why 2>1 dont work and why we need to use &?
ns: Adding & at the end of any command means it should run in the background
using 2>1 without & means it will redirect the STDERR to a fie called 1.Thats why we use & to the STDERR redirection at bckend and sent to STDIN

What is mean by bash 10.stdin_stout_sterr.sh > /tm/demo1 2>1?
Ans: Executing the above command will run the script and redirect STDERR to STDOUT and then redirect STDOUT to /tmp/demo1

How tee command works?
Ans uptime | tee  /tmp/hello #Prints uptime on the screen and overwrites/cretes file /tmp/hello.
free -h | tee -a /tmp/hello #prints free memory on screen an also append to the file /tmp/hello

How can i search a file or command for particular information?
GREP 
cat /etc/passwd | grep ubuntu
cat /etc/passwd | grep -i UBUNTU  # -i ignore case
cat /etc/passwd | grep -v -i UBUNTU # -v prints data which dont have ubuntu
cat /etc/passwd | grep -i -n UBUNTU  # provides the maching line number

How can i cut the strings using delimiter?
ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/bash



