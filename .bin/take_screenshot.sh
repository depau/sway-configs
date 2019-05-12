#!/usr/bin/env bash

GEOMETRY=$(slurp -d)
DATE=$(date +'%F %T')
case "$1" in
    clipboard) TMP=mktemp
               grim -g "$GEOMETRY" $TMP
               wl-copy <$TMP
               rm $TMP
        ;;
    *) grim -g "$GEOMETRY" "$HOME/Pictures/Screenshot from $DATE.png"
        ;;
esac
