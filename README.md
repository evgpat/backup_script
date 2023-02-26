# Backup Script

## Description

The script accept three parameters:
- `backup_dir`: the directory to backup
- `algorithm`: the compression algorithm to use
- `output_file`: the output file name

The resulting backup archive is encrypted (*openssl*).

All output except errors are suspended into the `error.log` file instead of *stderr*.

## Examples
```
./backup.sh --backup_dir /home/evgpat/summer_music --algorithm z --output_file backup.gz
```
