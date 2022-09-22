#!/bin/bash
localFile=$1
option=$2
wait=$3
set -e
set -o pipefail

if [ "$2" == "--wait" ] 
then
cat "$localFile" | zowe zos-ftp submit stdin "$option" "$wait"
else
cat "$localFile" | zowe zos-ftp submit stdin "$option"
fi
