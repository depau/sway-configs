#!/usr/bin/env bash
if [[ $# -gt 0 ]]; then
    swaymsg rename workspace to "$@" &>/dev/null
fi
