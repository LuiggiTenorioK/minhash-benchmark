#!/bin/bash

omh_compare_sketches sketches/omh-k10-l1-m10/GS003.fa.omh sketches/omh-k10-l1-m10/GS005.fa.omh > distances/omh-k10-l1-m10/GS003_GS005.dist
omh_compare_sketches sketches/omh-k10-l1-m10/GS003.fa.omh sketches/omh-k10-l1-m10/GS037.fa.omh > distances/omh-k10-l1-m10/GS003_GS037.dist
omh_compare_sketches sketches/omh-k10-l1-m10/GS005.fa.omh sketches/omh-k10-l1-m10/GS005.fa.omh > distances/omh-k10-l1-m10/GS005_GS037.dist
