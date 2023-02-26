# Backup Script

## Description

The script accept three parameters:
- `backup_dir`: the directory to backup
- `algorithm`: the compression algorithm to use (*optional parameter*)
- `output_file`: the output file name

The resulting backup archive is encrypted (*openssl*).

All output except errors are suspended into the `error.log` file instead of *stderr*.

## Compression methods
- `j` - for `.tar.bz2` archives (*bzip2*)
- `J` - for `.tar.xz` archives (*xz*)
- `z` - for `.tar.gz` and `.tgz` archives (*gzip*)


## Examples
```
./backup.sh --backup_dir /home/evgpat/summer_music --algorithm z --output_file backup.tar.gz
```
