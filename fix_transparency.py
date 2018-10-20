# !/usr/bin/python
import os
import numpy as np

os.system('rm -rf fig_fixed && cp -r fig fig_fixed')

array = []
for root, dirs, files in os.walk("fig_fixed/", topdown=False):
   for name in files:
      if name.endswith('.pdf'):
         img = os.path.join(root, name)
         before = os.path.getsize(img)
         os.system(f"convert -quality 100 -density 300 {img} {img[:-4]}.pdf")
         after = os.path.getsize(img[:-4]+'.pdf')
         #os.system(f'rm -rf {img}')
         array += [[img,after/before]]
         print(f'File Size Ratio: {(after/before):.2f}, File: {img}')


np.save('array.npy',array)
