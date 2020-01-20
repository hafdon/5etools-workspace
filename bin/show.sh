#!/bin/bash

if [ -z "$1" ]
    then echo -e "\033[31;1;4mYou must provide a folder name!\033[0m"
    echo
    exit 0
fi

echo -e "\033[32;1;4mListing javascript files in $1 folder\033[0m"
echo 

ls -1 /Users/starkat/rpg/dnd5e/_Marshbout/_home/homebrew_json/5etools_pc/src/collection/hafdon_zorq/$1 | grep .js 

exit 0



#wc -l /Users/starkat/rpg/dnd5e/_Marshbout/_home/homebrew_json/5etools_pc/src/collection/hafdon_zorq/.trait/* | grep .js