 #!/bin/bash
  2 scrot /tmp/screen.png
  3 convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.p    ng
  4 #[[ -f $1 ]] && convert /tmp/screen.png $1 -gravity center -c    omposite -matte /tmp/screen.png
  5 
  6 
  7 
  8 convert /tmp/screen.png -spread 6 /tmp/screenshotblur.png
  9 rm /tmp/screen.png
 10 [[ -f ~/.config/i3/lock.png ]] && convert /tmp/screenshotblur    .png  ~/.config/i3/lock.png -gravity center -composite -matte     /tmp/screenshotblur.png
 11 
 12 
 13 #Pause music is music is playing
 14 if mpc | grep playing > /dev/null
 15 then
 16     mpc pause
 17     i3lock -u -i /tmp/screenshotblur.png -n;mpc toggle
 18 else
 19     i3lock -u -i /tmp/screenshotblur.png
 20 fi
 21 rm /tmp/screenshotblur.png
