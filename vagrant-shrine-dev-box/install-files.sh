#!/bin/sh

HERE=$( cd $( dirname $0 ); pwd )

for FILE in \
shrine-dev.yml \
filter_plugins 
do
  [ -f $HERE/$FILE ] && rm -fv $HERE/$FILE
  [ -d $HERE/$FILE ] && rm -rfv $HERE/$FILE
  [ "$1" != "-c" ] && cp -av "$HERE/../$FILE" "$( dirname $FILE )"
done
