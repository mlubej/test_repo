#!/bin/sh
\if@dvioutput dvipdf \jobname.dvi\else\par\fi
s=`kpsewhich \@srgb`
if [ x$s = x ]; then echo "Sorry the ICC file (\@srgb) cannot be found"; exit; fi
if [ ! '$s' = '\@srgb' ]; then cat \jobname.gs | sed -e "s+\@srgb+"$s"+g" > \jobname.gs0; fi
gs -dPDFA -dNOOUTERSAVE -sDEVICE=pdfwrite -sProcessColorModel=DeviceRGB -dPDFACompatibilityPolicy=1 -o \jobname-PDFA.pdf \jobname.gs0 \if@zeromarks \jobname.bmks \fi \jobname.pdf
rm -f \jobname.{gs0,dvi}
