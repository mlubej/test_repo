#!/bin/sh 
s=`kpsewhich sRGB_IEC61966-2-1_black_scaled.icc` 
if [ x$s = x ]; then echo "Sorry the ICC file (sRGB_IEC61966-2-1_black_scaled.icc) cannot be found"; exit; fi 
if [ ! '$s' = 'sRGB_IEC61966-2-1_black_scaled.icc' ]; then cat thesis.gs | sed -e "s+sRGB_IEC61966-2-1_black_scaled.icc+"$s"+g" > thesis.gs0; fi 
gs -dPDFA -dNOOUTERSAVE -sDEVICE=pdfwrite -sProcessColorModel=DeviceRGB -dPDFACompatibilityPolicy=1 -o thesis-PDFA.pdf thesis.gs0 thesis.pdf 
rm -f thesis.{gs0,dvi} 
