#!/bin/bash

# Set 1. Last run: 37 minutes 14 seconds
S_PARAMS=k5-l2-m1000

date1=$(date +"%s")
echo "Started " "$(date)"

omh_sketch -o "sketches/mags-omh-${S_PARAMS}.fa.omh" ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

omh_compare_sketches "sketches/mags-omh-${S_PARAMS}.fa.omh" "sketches/mags-omh-${S_PARAMS}.fa.omh" > "distances/mags-omh-${S_PARAMS}.dist"


# Set 2. Last run: 41 minutes 39 seconds
K=21
L=1
M=1000
S_PARAMS="k${K}-l${L}-m${M}"

date1=$(date +"%s")
echo "Started " "$(date)"

omh_sketch -k "${K}" -l "${L}" -m "${M}" -o "sketches/mags-omh-${S_PARAMS}.fa.omh" ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

omh_compare_sketches "sketches/mags-omh-${S_PARAMS}.fa.omh" "sketches/mags-omh-${S_PARAMS}.fa.omh" > "distances/mags-omh-${S_PARAMS}.dist"


# Set 3. Last run: 39 minutes 9 seconds
K=21
L=2
M=1000
S_PARAMS="k${K}-l${L}-m${M}"

date1=$(date +"%s")
echo "Started " "$(date)"

omh_sketch -k "${K}" -l "${L}" -m "${M}" -o "sketches/mags-omh-${S_PARAMS}.fa.omh" ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

omh_compare_sketches "sketches/mags-omh-${S_PARAMS}.fa.omh" "sketches/mags-omh-${S_PARAMS}.fa.omh" > "distances/mags-omh-${S_PARAMS}.dist"


# Set 4. Last run: 39 minutes 15 seconds
K=10
L=1
M=1000
S_PARAMS="k${K}-l${L}-m${M}"

date1=$(date +"%s")
echo "Started " "$(date)"

omh_sketch -k "${K}" -l "${L}" -m "${M}" -o "sketches/mags-omh-${S_PARAMS}.fa.omh" ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

omh_compare_sketches "sketches/mags-omh-${S_PARAMS}.fa.omh" "sketches/mags-omh-${S_PARAMS}.fa.omh" > "distances/mags-omh-${S_PARAMS}.dist"


# Set 5. Last run: 39 minutes 39 seconds
K=10
L=2
M=1000
S_PARAMS="k${K}-l${L}-m${M}"

date1=$(date +"%s")
echo "Started " "$(date)"

omh_sketch -k "${K}" -l "${L}" -m "${M}" -o "sketches/mags-omh-${S_PARAMS}.fa.omh" ./data/mags_concat.fa

date2=$(date +"%s")
DIFF=$((date2-date1))
echo "Duration: $((DIFF / 3600 )) hours $(((DIFF % 3600) / 60)) minutes $((DIFF % 60)) seconds"

omh_compare_sketches "sketches/mags-omh-${S_PARAMS}.fa.omh" "sketches/mags-omh-${S_PARAMS}.fa.omh" > "distances/mags-omh-${S_PARAMS}.dist"