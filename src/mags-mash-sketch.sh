#!/bin/bash

K=21
S=1000
S_PARAMS="k${K}-s${S}"

date1=$(date +"%s")
echo "Started " "$(date)"

mash sketch -p 4 -o "sketches/mags-mash-${S_PARAMS}.fa.msh" -i ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

# Last run 1 sec

mash dist -p 4 "sketches/mags-mash-${S_PARAMS}.fa.msh" "sketches/mags-mash-${S_PARAMS}.fa.msh" > "distances/mags-mash-${S_PARAMS}.dist"