#!/bin/bash

set +e

export XDG_CURRENT_DESKTOP=Unity

while true; do
  waybar $@
  if [ $? != 139 ]; then
    break
  fi
done
