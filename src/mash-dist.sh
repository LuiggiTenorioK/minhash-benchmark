#!/bin/bash

date1=$(date +"%s")
echo "Started " "$(date)"

mash dist -p 4 sketches/mash-k10-s100/GS003.fa.msh sketches/mash-k10-s100/GS005.fa.msh > distances/mash-k10-s100/GS003_GS005.dist
gzip -k distances/mash-k10-s100/GS003_GS005.dist
mash dist -p 4 sketches/mash-k10-s100/GS003.fa.msh sketches/mash-k10-s100/GS037.fa.msh > distances/mash-k10-s100/GS003_GS037.dist
gzip -k distances/mash-k10-s100/GS003_GS037.dist
mash dist -p 4 sketches/mash-k10-s100/GS005.fa.msh sketches/mash-k10-s100/GS037.fa.msh > distances/mash-k10-s100/GS005_GS037.dist
gzip -k distances/mash-k10-s100/GS005_GS037.dist

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"