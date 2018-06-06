#!/bin/bash

# SHORT_OUTPUT: set to true to force SpeedTest script into text output mode
# SHARE: set to true to get a results URL printed to the docker logs as well
# SERVER: set this variable to a specific server URL if you want, otherwise leave empty
SHORT_OUTPUT=true;
SHARE=true;
SERVER="ohcn.OST.myvzw.com:8080";

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
