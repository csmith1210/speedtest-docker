#!/bin/bash

cmd="/usr/local/bin/SpeedTest";
if [ "$SHORT_OUTPUT" = "true" ]; then
   cmd="$cmd --output text";
fi
if [ "$SHARE" = "true" ]; then
   cmd="$cmd --share";
fi
if [ "$SERVER" != "" ]; then
   cmd="$cmd --test-server $SERVER";
fi

printf "\nSpeed Test $(date +'%D %T')\n"
eval $cmd
