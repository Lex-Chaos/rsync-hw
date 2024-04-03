#!/bin/bash
rsync -avz --delete $HOME/ /tmp/backup

if [ $? -eq 0 ]; then
  logger Backup successful
else
  logger Backup failed
fi