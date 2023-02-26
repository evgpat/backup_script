# Backup Script

The script accept three parameters:
- `backup_dir`: the directory to backup
- `algorithm`: the compression algorithm to use
- `output_file`: the output file name

The resulting backup archive is encrypted (*openssl*).

All output except errors are suspended and written to the error.log file instead of stderr.
