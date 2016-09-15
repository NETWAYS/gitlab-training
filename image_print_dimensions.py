#!/usr/bin/env python

from PIL import Image
# pip install Image
import fnmatch
import os

matches = []

for root, dirnames, filenames in os.walk('_images'):
  for filename in fnmatch.filter(filenames, '*.png'):
    matches.append(os.path.join(root, filename))

new_width = 480

# width : new_width = height : new_height
for f in matches:
  with Image.open(f) as im:
    width, height = im.size
    new_height = new_width * height / width

    print '%s" style="width=%dpx;height=%dpx"' % (f, new_width, new_height)
