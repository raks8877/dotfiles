import os
import glob
import subprocess
import time
import random

images = glob.glob('/home/raks/Pictures/wallpapers-master/my/*')
img = images[0]

while img == images[0]:
	random.shuffle(images)


wall = subprocess.Popen(['wal', '-i' , str(images[0]) ])
