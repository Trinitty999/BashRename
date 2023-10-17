import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--dir", "-d", help="which dir")
parser.add_argument("--file", "-f", help="which file", default="/tmp/filenames")
args = parser.parse_args


dir = args.dir
filename = args.file

