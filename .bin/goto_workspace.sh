#!/usr/bin/env bash
if [[ $# -eq 0 ]]; then
    swaymsg -t get_workspaces | jq -r '.[].name'
else
    swaymsg workspace "$@" &>/dev/null
fi
