#!/bin/bash

# Print the perms of file or directory


function perms()
{
    SOURCE=$1

    PERM=$(ls -l $SOURCE | cut -d " " -f 1)
    OWNER_PERM=$(echo $PERM | cut -b 2-4)
    GROUP_PERM=$(echo $PERM | cut -b 5-7)
    OTHERS_PERM=$(echo $PERM | cut -b 8-10)
    echo "Les droits du propriétaire : $OWNER_PERM"
    echo "Les droits du group : $GROUP_PERM"
    echo "Les droits des autres : $OTHERS_PERM"
}

perms $1
