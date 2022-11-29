#!/bin/bash 

function retry () {
   local FUNCTION="$@"
   local COUNT=0
   local MAX=5 
   local SLEEP=2

   while true; do
    $FUNCTION && break
    if [[ $COUNT -lt $MAX ]]; then
    ((COUNT++))
    echo "Command failed, retrying after $SLEEP second... ($COUNT/$MAX)"
    sleep $SLEEP
    continue
  fi
   echo "Command failed, out of retries"
   exit 1 
  done  
}

function healthcheck () {
   local WEBSITE_URL=$1

   curl -sIL $WEBSITE_URL | grep " 200 " > /dev/null 2>&1
   [ $? -ne 0 ] && echo "URL haven't responded 200 " && return 1
  echo "URL responded 200"
}

[ $# -ne 1 ] && echo "1 argument required, got $#" && exit 1 
