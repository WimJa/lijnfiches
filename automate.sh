#!/bin/bash

# Replace all default 'Sans' font (on windows Arial, on linux Dejavu sans) with Arial
# This fixes the rendering differences on win vs linux when there is no font defined ('Sans')

find . -name "*.svg" -print  | sed 's/.*/"&"/' | xargs sed -i 's/font-family:Sans/font-family:Arial/g'


# generate pdf's of all svg's :)
find . -name "*svg" -exec inkscape {} --export-pdf=pdf/{}.pdf \;

# and for the fun and printing one BIG pdf containing all the goodies
pdfunite pdf/A4* pdf/FULL_PRINT_A4.pdf
# only one A5 yet
#pdfunite pdf/L* pdf/FULL_PRINT_A5.pdf
