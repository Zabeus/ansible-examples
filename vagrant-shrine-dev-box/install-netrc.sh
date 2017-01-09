#!/bin/sh

ME=$( basename $0 )
HERE=$( cd $( dirname $0 ); pwd )

EXTRAVARS=/vagrant/extra_vars.yml
NETRC=/home/vagrant/.netrc

rm -f $NETRC

GITUSER=$( grep ^git_username: $EXTRAVARS | awk '{print $2}' )
if [ -z "$GITUSER" ]
then
  echo "$ME: please set git_username in $(basename $EXTRAVARS)!" >&2
  exit 1
fi

GITPASS=$( grep ^git_password: $EXTRAVARS | awk '{print $2}' )
if [ -z "$GITPASS" ]
then
  echo "$ME: please set git_password in $(basename $EXTRAVARS)!" >&2
  exit 1
fi

echo "machine open.med.harvard.edu login $GITUSER password $GITPASS" > $NETRC
chown vagrant: $NETRC
chmod 600 $NETRC

echo "$ME: installed $NETRC with credentials from $(basename $EXTRAVARS)"
