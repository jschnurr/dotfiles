#!/bin/bash
HOSTNAME=$(hostname)
DATE=$(date +%Y-%m-%d)
FNAME="${DATE}-${HOSTNAME}-WSL2.tar.gz"
BACKUP_DIR="/mnt/c/Users/jschn/OneDrive/backups"

tar -zcvpf $BACKUP_DIR/$FNAME ~/.*rc* ~/.ssh ~/dev

#To delete files older than 10 days
# find $BACKUP_DIR/* -mtime +10 -exec rm {} \;