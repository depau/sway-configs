#!/bin/bash

set +e

while true; do
  waybar $@
  if [ $? != 139 ]; then
    break
  fi
done
