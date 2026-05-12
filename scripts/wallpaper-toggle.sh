#!/bin/bash

# Define paths
LIVE_WP="/home/kaiser/.config/mango/live-wallpapers/samurai-anime-boy-koi-in-sword-moewalls-com.mp4"

if pgrep -x "mpvpaper" >/dev/null; then
  # If mpvpaper is running, kill it to reveal the static swaybg underneath
  pkill mpvpaper
else
  # If not running, start it
  mpvpaper -o "no-audio --loop" eDP-1 "$LIVE_WP"
fi
