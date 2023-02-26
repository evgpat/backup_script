#!/bin/bash

LOGFILE=error.log
TMP_OUTPUT=tmp_output

echo  >>$LOGFILE
echo "====================================================="  >>$LOGFILE
echo "$(date +'%d-%b-%Y %R')" >>$LOGFILE


# reading parameters
while [ $# -gt 0 ]; do
  case "$1" in
    --backup_dir)
      backup_dir="$2"
      ;;
    --algorithm)
      algorithm="$2"
      ;;
    --output_file)
      output_file="$2"
      ;;
  esac
  shift
done


# compress backup folder
if [ -z "$algorithm" ] # case when compression algorithm is not defined
then
  tar -c -f $TMP_OUTPUT -C $backup_dir $(ls -A $backup_dir) 2>>$LOGFILE
else
  tar -c -$algorithm -f $TMP_OUTPUT -C $backup_dir $(ls -A $backup_dir) 2>>$LOGFILE
fi

# encrypt result
openssl aes-256-cbc -a -salt -pbkdf2 -in $TMP_OUTPUT -out $output_file

# remove temporary backup
rm $TMP_OUTPUT

echo 'done' >>$LOGFILE
