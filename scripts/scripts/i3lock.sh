#!/usr/bin/env bash

icon="$HOME/.i3lock/icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 2.5% -scale 4000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity Center -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
