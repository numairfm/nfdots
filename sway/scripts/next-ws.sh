#!/bin/bash

CURRENT=$(swaymsg -t get_workspaces | jq '.[] | select(.focused).num')

if [ "$1" = "next" ]; then
    if [ "$CURRENT" -lt 9 ]; then
        swaymsg workspace number $((CURRENT + 1))
    fi
elif [ "$1" = "prev" ]; then
    if [ "$CURRENT" -gt 1 ]; then
        swaymsg workspace number $((CURRENT - 1))
    fi
fi
