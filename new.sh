#!/usr/bin/env bash

NAME=$1
DESTDIR=$2

if [ -z $NAME ] || [[ $NAME =~ ^[\.\~\/] ]]; then
    echo "usage: new.sh name [destdir]"
    exit 1
fi

if [ -z $DESTDIR ]; then
    DESTDIR="."
elif [[ $DESTDIR =~ /${NAME}$ ]]; then
    DESTDIR=${DESTDIR%/*}
fi

if [ ! -e $DESTDIR ]; then
    $(mkdir -p $DESTDIR)
fi

ABSDEST=$(cd $DESTDIR && pwd)

# cd ${0%/*}/../priv

./rebar create template=at1 appid=$NAME prefix=$ABSDEST/$NAME