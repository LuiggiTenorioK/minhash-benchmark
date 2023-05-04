# MASH vs OMH 

## Singularity container

Build singularity container:

```bash
singularity build container.img container.def
```

## GOS FTP 

```bash
# Get root file listing
wget --no-remove-listing ftp://ftp.imicrobe.us/projects/26/

# Download all sample reads
wget -r --no-parent -A *.fa.gz ftp://ftp.imicrobe.us/projects/26/samples
```

Some notes:
* OMH better on long reads, depends on the missmatchs of the data
* Select 2 biggest samples of each data source
* Estimate runtime
* Get the directories where the data is already downloaded
* OMH params -k 10 -l 1,2,3 -m 10
* Do average of minimum distances

Steps:
* Download 3 datasets (2 similar and 1 distant) and sample ~1000 reads
* Make sketches
* Compute distance matrix
* Make histogram
* Run hypothesis testing?

* Running OMH distance 8 min 20 sec for 3 pair sets