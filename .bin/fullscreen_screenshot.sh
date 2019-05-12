#!/usr/bin/env bash

DATE=$(date +'%F %T')
case "$1" in
    clipboard) TMP=mktemp
               grim $TMP
               wl-copy <$TMP
               rm $TMP
        ;;
    *) grim "$HOME/Pictures/Screenshot from $DATE.png"
        ;;
esac
