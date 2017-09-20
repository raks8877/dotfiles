#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png
#Pause music
mpc pause

convert /tmp/screen.png -spread 6 /tmp/screenshotblur.png
rm /tmp/screen.png
#Display unlock indicator
i3lock -i /tmp/screenshotblur.png
#Do not display unlock indicator
#i3lock -u -i /tmp/screenshotblur.png
rm /tmp/screenshotblur.png
