#!/bin/bash
echo Usage: apply-guesses.sh [password CSV] [key file]
echo Password file: $1
echo Key file: $2
while read password ; do
   echo ------
   echo Attempting: $password...
   openssl enc -d -p -aes-256-cbc -a -in $2 -out recovered.key -pass pass:$password
   if [ $? -eq 0 ];
     then
       echo "Success!";
       break;
     else
       echo "Failed";
   fi
   echo ------
done < $1

