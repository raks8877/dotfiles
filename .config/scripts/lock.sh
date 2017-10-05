#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -composite -matte /tmp/screen.png



convert /tmp/screen.png -spread 6 /tmp/screenshotblur.png
rm /tmp/screen.png
[[ -f ~/.config/i3/lock.png ]] && convert /tmp/screenshotblur.png  ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screenshotblur.png


#Pause music is music is playing
if mpc | grep playing > /dev/null
then
    mpc pause
    i3lock -u -i /tmp/screenshotblur.png -n;mpc toggle
else
    i3lock -u -i /tmp/screenshotblur.png
fi
rm /tmp/screenshotblur.png
