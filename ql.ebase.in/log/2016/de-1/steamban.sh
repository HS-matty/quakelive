#!/bin/bash
re='^[0-9]{17}'
if ! [[ ${#1} -eq 17 ]] ; then
   echo "Requires 17 digit arg" >&2; exit 1
fi
if ! [[ $1 =~ $re ]] ; then
   echo "Error: Not SteamID64" >&2; exit 1
else
        find /home/matty/.quakelive -maxdepth 3 -name "access.txt" -print | xargs sed -i "\$a$1|ban\\"
fi
