import os
import glob
import subprocess
import time
import random

images = glob.glob('/home/raks/Pictures/wallpapers-master/my/*')
img = images[0]



while img == images[0]:
	random.shuffle(images)


import os,sys
os.system('killall blurme;sleep 1')

os.system('wal -i '+str(images[0])+';sleep 1')

#wall = subprocess.Popen(['wal', '-i' , str(images[0]) ])
os.system('nohup ~/.config/scripts/blurme -t 0.0000000001 > /dev/null 2>&1 &')
