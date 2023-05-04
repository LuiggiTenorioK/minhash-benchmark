#!/usr/bin/env python

import gzip
import json

SAMPLE_SIZE = 10000

DATA_PATHS = [
    {
        "sample_name": "GS003",
        "raw_filename": "./data/ftp.imicrobe.us/projects/26/samples/588/JCVI_SMPL_1103283000009.fa.gz",
        "output_filename": "./data/samples/GS003.fa"
    },
    {
        "sample_name": "GS005",
        "raw_filename": "./data/ftp.imicrobe.us/projects/26/samples/590/JCVI_SMPL_1103283000011.fa.gz",
        "output_filename": "./data/samples/GS005.fa"
    },
    {
        "sample_name": "GS037",
        "raw_filename": "./data/ftp.imicrobe.us/projects/26/samples/621/JCVI_SMPL_1103283000042.fa.gz",
        "output_filename": "./data/samples/GS037.fa"
    }
]


def main(sample_paths, sample_size=1000):

    idx = {}

    for sample in sample_paths:
        with gzip.open(sample["raw_filename"], "rb") as f:
            fasta = f.read().decode()
            fasta = fasta.split("\n")[:sample_size*2]

        with open(sample["output_filename"], "w") as f:
            f.write("\n".join(fasta))

        read_ids = [fasta[i][1:24] for i in range(0, len(fasta), 2)]

        idx[sample["sample_name"]] = read_ids

    with open("./data/samples/read_ids.json", "w") as f:
        json.dump(idx, f)


if __name__ == '__main__':
    main(DATA_PATHS, SAMPLE_SIZE)
