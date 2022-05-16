#!/usr/bin/env python3

import os

def getfile(dir,suf):
    res=[]
    for root,directory,files in os.walk(dir):
        for filename in files:
            name,suffix=os.path.splitext(filename)
            if suffix==suf:
               res.append(os.path.join(root,filename))
    return res

def wirterfile(adrs,data):
    with open(adrs,"r+",encoding="u8") as fp:
        tmp=fp.read()
        fp.seek(0)
        fp.write(data + "\n" + tmp)

for file in getfile("./assets",".ts"):
    wirterfile(file,"//di min;1502457")



                