#!/bin/bash

date1=$(date +"%s")
echo "Started " "$(date)"

mash sketch -p 4 -o sketches/mags-mash-k21-s1000.fa.msh -i ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

# Last run 1 sec

mash dist -p 4 sketches/mags-mash-k21-s1000.fa.msh sketches/mags-mash-k21-s1000.fa.msh > distances/mags-mash-k21-s1000.dist