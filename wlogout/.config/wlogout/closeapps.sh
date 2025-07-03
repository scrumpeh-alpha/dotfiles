#!/usr/bin/env bash

notify-send "wlogout" "Initiating logout"

sleep 1

HYPRCMDS=$(hyprctl -j clients | jq -j '.[] | "dispatch closewindow address:\(.address); "')
hyprctl --batch "$HYPRCMDS" >> /tmp/hyprexitwithgrace.log 2>&1

notify-send "wlogout" "Closing Applications..."

sleep 2

COUNT=$(hyprctl clients | grep "class:" | wc -l)
if [ "$COUNT" -eq "0" ]; then
    notify-send "wlogout" "Closed Applications."
else
    notify-send "wlogout" "Some apps didn't close. Not shutting down."
    return
fi
