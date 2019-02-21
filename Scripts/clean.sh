#!/bin/sh
# github.com/yaszu

printf "\nWhich your old kernel version?: "
read version
if [ "$version" ]
   then
       rm -rf /usr/src/linux-${version};rm -rf /lib/modules/${version};printf "Old kernel clear\n"
   else
       printf "\nOld kernel not clear"
fi

printf "\nClear portage? Y or N: "
read letter
if [ $letter == y ]
   then
       rm -rf /usr/portage/{distfiles,packages};rm -rf /var/tmp/portage;printf "Portage clear\n"
   else
       printf "Portage not clean\n"
fi

printf "\nClear ~/.cache? Y or N: "
read letter
if [ $letter == y ]
   then
       rm -rf ~/.cache;printf "Cache clear\n"
   else
       printf "Cache not clear\n"
fi

printf "\nClear ~/.thumbnails? Y or N: "
read letter
if [ $letter == y ]
   then
       rm -rf ~/.thumbnails;printf "Thumbnails clear\n"
   else
       printf "Thumbnails not clear"
fi
