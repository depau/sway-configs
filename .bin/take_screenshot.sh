#!/usr/bin/env bash

GEOMETRY=$(slurp -d)
DATE=$(date +'%F %T')
sleep 0.3
case "$1" in
    clipboard) TMP=mktemp
               grim -g "$GEOMETRY" $TMP
               wl-copy <$TMP
               rm $TMP
        ;;
    *) grim -g "$GEOMETRY" "$HOME/Pictures/Screenshot from $DATE.png"
        ;;
esac
