import os
import sys
import re

seeds = []

def get_seed():
    os.chdir(sys.path[0])
    with open("seeds.txt", "r") as f:
        seed = f.readline()
        seedreal = re.search(r"(-?\d{4,})", seed)
        if seedreal:
            with open("seed.txt", "w") as f:
                f.writelines(seedreal.group(0))
            delete_line()
        else:
            delete_line()
            get_seed()

def delete_line():
    os.chdir(sys.path[0])
    with open ("seeds.txt", "r") as f:
        seeds = f.readlines()
    with open("seeds.txt", "w") as f:
        for i, line in enumerate(seeds):
            if i not in [0]:
                f.write(line)
   
get_seed()