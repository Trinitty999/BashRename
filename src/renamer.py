from os import *
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('dir', type=str, help="which dir")
parser.add_argument("file", type=str, help="which files")
args = parser.parse_args()

dir = args.dir

print(args.file)

filedict = open(args.file, "r+")

files = [f for f in listdir(dir) if path.isfile(path.join(dir, f))]    

files.sort()

for item in filename:
    print(item)
    