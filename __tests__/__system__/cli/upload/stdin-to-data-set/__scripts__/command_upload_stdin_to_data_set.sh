#!/bin/bash
localfile=$1
dataset=$2
set -e
set -o pipefail

cat "$localfile" | zowe zos-ftp upload stdin-to-data-set  "$dataset"
