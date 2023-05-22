#!/bin/bash

date1=$(date +"%s")
echo "Started " "$(date)"

omh_sketch -o sketches/mags-omh-k5-l2-m1000.fa.omh ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

# Last run: 37 min 14 sec

omh_compare_sketches sketches/mags-omh-k5-l2-m1000.fa.omh sketches/mags-omh-k5-l2-m1000.fa.omh > distances/mags-omh-k5-l2-m1000.dist