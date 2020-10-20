#!/usr/bin/env bash
if [[ $# -eq 0 ]]; then
    swaymsg -t get_workspaces | jq -r '.[].name'
else
    swaymsg move window to workspace "$@" &>/dev/null
fi
