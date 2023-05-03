#!/bin/bash

mash dist -p 4 sketches/mash-k10-s10/GS003.fa.msh sketches/mash-k10-s10/GS005.fa.msh > distances/mash-k10-s10/GS003_GS005.dist
mash dist -p 4 sketches/mash-k10-s10/GS003.fa.msh sketches/mash-k10-s10/GS037.fa.msh > distances/mash-k10-s10/GS003_GS037.dist
mash dist -p 4 sketches/mash-k10-s10/GS005.fa.msh sketches/mash-k10-s10/GS037.fa.msh > distances/mash-k10-s10/GS005_GS037.dist