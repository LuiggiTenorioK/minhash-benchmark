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
