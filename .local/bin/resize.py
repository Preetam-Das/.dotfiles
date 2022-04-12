#!/usr/bin/env python
import subprocess as sub
dir = '~/wallpapers/anime'
images = sub.check_output(f'ls {dir}', shell=True).decode('utf-8').split('\n')[:-1]

for i in range(len(images)):
    sub.call(f'convert {dir}/{images[i]} -resize 1920x1080 ~/anime/{i+1}.jpg', shell=True)
