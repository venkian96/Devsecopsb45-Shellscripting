#!/bin/bash
#server1 to server 10
for server in server1 server2 server3 server4 server5 server6 server7 server8 server9 server10
do
  telnet $server 80
done

#copy file to 100 servers

for server in $(cat severs.txt)
do
echo ${server[@])
done