#!/bin/bash

# ensure php is in the path
export PATH=$PATH:/usr/local/bin

if [ "$#" -ne 1 ]; 
    then 
    echo Executing job to run expirations, syncorgsources, and groupvalidity tasks
    cd /srv/comanage-registry/app && Console/cake job -q
    exit
fi

echo Executing job shell for CO number $1
cd /srv/comanage-registry/app && Console/cake job -q -r -c $1
echo Done executing job shell for CO number $1
