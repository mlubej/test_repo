#!/bin/sh 
s=`kpsewhich sRGB_IEC61966-2-1_black_scaled.icc` 
if [ x$s = x ]; then echo "Sorry the ICC file (sRGB_IEC61966-2-1_black_scaled.icc) cannot be found"; exit; fi 
if [ ! '$s' = 'sRGB_IEC61966-2-1_black_scaled.icc' ]; then cat thesis_v2.gs | sed -e "s+sRGB_IEC61966-2-1_black_scaled.icc+"$s"+g" > thesis_v2.gs0; fi 
gs -dPDFA -dNOOUTERSAVE -sDEVICE=pdfwrite -sProcessColorModel=DeviceRGB -dPDFACompatibilityPolicy=1 -o thesis_v2-PDFA.pdf thesis_v2.gs0 thesis_v2.pdf 
rm -f thesis_v2.{gs0,dvi} 
