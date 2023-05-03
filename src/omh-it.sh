#!/bin/bash

omh_sketch -k 10 -l 1 -m 10 -o sketches/omh-k10-l1-m10/GS003.fa.omh data/samples/GS003.fa
omh_sketch -k 10 -l 1 -m 10 -o sketches/omh-k10-l1-m10/GS005.fa.omh data/samples/GS005.fa
omh_sketch -k 10 -l 1 -m 10 -o sketches/omh-k10-l1-m10/GS037.fa.omh data/samples/GS037.fa

omh_sketch -k 10 -l 1 -m 100 -o sketches/omh-k10-l1-m100/GS003.fa.omh data/samples/GS003.fa
omh_sketch -k 10 -l 1 -m 100 -o sketches/omh-k10-l1-m100/GS005.fa.omh data/samples/GS005.fa
omh_sketch -k 10 -l 1 -m 100 -o sketches/omh-k10-l1-m100/GS037.fa.omh data/samples/GS037.fa