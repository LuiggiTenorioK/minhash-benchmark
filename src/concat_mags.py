#!/usr/bin/env python

import glob
import os

def main():
    paths = glob.glob("./data/mags/*.fa")

    all_mags = ""

    for p in paths:
        filename = os.path.basename(p)
        header = ">" + os.path.splitext(filename)[0]
        print(filename, header)
        with open(p, "r") as f:
            sequence = ""
            for line in f:
                if line[0] != ">":
                    sequence += line.strip()

        entry = header + "\n" + sequence + "\n"
        all_mags += entry

        # with open("./data/mags_concat/"+filename, "w") as f:
        #     f.write(entry)

    with open("./data/mags_concat.fa", "w") as f:
        f.write(all_mags)



if __name__ == '__main__':
    main()
