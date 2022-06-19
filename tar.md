# Using TAR Command

### CREATING

```sh
### Creating Tar Archive
tar -cf archive.tar file1 file2 ...

### Creating tar archive with feedback
tar -cvf archive.tar file1 file2 ...

### Creating tar archive with gz compression algorithm.
tar -czf archive.tar.gz file1 file2 ...

### Creating tar archive with bz2 compression algorithm.
tar -cjf archive.tar.bz2 file1 file2 ...
```

### EXPLORE

```sh
# Explore Tar Archives.
tar -tf archive.tar

# Explore Tar Archive with All File Information
tar -tvf archive.tar
```

### EXTRACT

```sh
# Extract Archive
tar -xf archive.tar

# Extracting Archive with feedback
tar -xvf archive.tar

# Extracting Archive by specifying de-compression algorightm
tar -xvzf archive.tar.gz

# Extracting single file from archive
tar -xf archive.tar file1 file2
```

### APPEND
```sh
# Appending files to existing tar archive
tar -rf existing.archive.tar newfile1 newfile2 ...
```

### DELETE
```sh
# Delete files from existing tar archive
tar --delete -f archive.tar file1 file2 ...
```








































