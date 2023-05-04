#!/bin/bash

date1=$(date +"%s")
echo "Started " "$(date)"

omh_compare_sketches sketches/omh-k10-l1-m100/GS003.fa.omh sketches/omh-k10-l1-m100/GS005.fa.omh > distances/omh-k10-l1-m100/GS003_GS005.dist
gzip -k distances/omh-k10-l1-m100/GS003_GS005.dist
omh_compare_sketches sketches/omh-k10-l1-m100/GS003.fa.omh sketches/omh-k10-l1-m100/GS037.fa.omh > distances/omh-k10-l1-m100/GS003_GS037.dist
gzip -k distances/omh-k10-l1-m100/GS003_GS037.dist
omh_compare_sketches sketches/omh-k10-l1-m100/GS005.fa.omh sketches/omh-k10-l1-m100/GS005.fa.omh > distances/omh-k10-l1-m100/GS005_GS037.dist
gzip -k distances/omh-k10-l1-m100/GS005_GS037.dist

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"