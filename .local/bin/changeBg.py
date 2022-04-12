#! /usr/bin/python

import subprocess

def getWallPath():
    s = subprocess.check_output(["cat", "/home/pree/.fehbg"])
    wall = s.decode("utf-8").split()[-1].split('/')[-1][:-1] 
    path = '  --url: url("images/' + wall + '");\n' 
    # print(wall)
    # print(path)
    return path


file = open("/home/pree/.mozilla/firefox/t3kug2g5.default-release/chrome/userContent.css", "r")
out = ''
lines = file.readlines()
for i in range(len(lines)):
    if i == 1:
        out += getWallPath()
        continue;
    out += lines[i]
file.close()
file = open("/home/pree/.mozilla/firefox/t3kug2g5.default-release/chrome/userContent.css", "w")
file.write(out)
# print(out)
file.close()