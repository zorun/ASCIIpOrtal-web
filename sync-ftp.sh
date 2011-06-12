#!/bin/bash
# This script syncs the content of the folder with a FTP server.
# It makes use of lftp, make sure it is installed.

usage () {
  echo "usage: $0 <username>"
  echo "Syncs the content of the current directory to a FTP server."
  echo "See the script itself for information."
  exit 1
}

[ "$#" -lt 1 ] && usage

HOST="cymonsgames.com"
USER="$1"
LCD="."
RCD="/test-website/"

# smarty: to speed mirroring up (it doesn't change)
# cache, templates_c: because lftp wants to clean them up
EXCLUDE=".git smarty cache templates_c"

echo "I am about to mirror the current directory (that is, \"$PWD\")"
echo "to \"$USER@$HOST:$RCD\". Is that what you want?"
echo "(if no, press Ctrl-c)"

lftp -c "set ftp:list-options -a;
set ssl:verify-certificate false;
open ftp://$USER@$HOST; 
lcd $LCD;
cd $RCD;
mirror --reverse \
       --delete \
       --verbose \
       --exclude $EXCLUDE"
