#!/bin/bash

dest_folder=/Users/starkat/rpg/dnd5e/_Marshbout/_home/homebrew_json/5etools_pc/src/collection/hafdon_zorq/$1

# cat  >> template_txt
FILE=$dest_folder/__template.js
if test -f "$FILE"; then
    echo
    echo "Template file exists"
    echo
    else 
    echo -e "\033[31;1;4mNo template file!\033[0m"
    echo 
    exit 0
fi

if [ -z "$1" ]
    then echo -e "\033[31;1;4mYou must provide a folder name!\033[0m"
    echo
    exit 0
fi

if [ -z "$2" ]
    then echo -e "\033[31;1;4mYou must provide a thing name!\033[0m"
    echo
    exit 0
fi

echo -e "Creating $1 file."
echo

entries='LOREM IPSUM'
if [ -z "$3" ]
    then echo "Empty entry text"
else 
    entries=$3
fi

sed -e "s/NAME/$2/g; s/ENTRY_TEXT/$entries/g"  $dest_folder/__template.js > $dest_folder/$2.js

# will error if file exists?
# cat $filetext > $dest_folder/$2.js
vi $dest_folder/$2.js

echo created file $dest_folder/$2.js
