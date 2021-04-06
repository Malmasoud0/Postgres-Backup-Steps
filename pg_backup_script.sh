#!/bin/bash
# This script will backup the postgresql database
# and store it in a specified directory

# Constants

# This is a database user created for only backup purposes.
USER="backupuser" 
# Below are multiple databases to be backed-up. 
DATABASE="db"
DATABASE1="db1"
DATABASE2="db2"
DATABASE3="db3"
DATABASE4="db4"
DATABASE5="db5"
DATABASE6="db6"
DATABASE7="db7"
DATABASE8="db8"
DATABASE9="db9"
DATABASE10="db10"
DATABASE11="db11"
DATABASE12="db12"
# Specify ip address of the database. 
HOST="x.x.x.x"
# directory where the backup files will be saved. 
# Note: make sure that the directory is separate drive which can be moved safely if server of databases crashed. 
BACKUP_DIRECTORY="/root/backup"

# Date stamp (formated YYYYMMDD)
# just used in file name
CURRENT_DATE=$(date "+%Y%m%d")

# Database named (command line argument) use pg_dump for targed backup
pg_dump -U $USER $DATABASE -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE1 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE1\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE2 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE2\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE3 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE3\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE4 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE4\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE5 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE5\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE6 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE6\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE7 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE7\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE8 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE8\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE9 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE9\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE10 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE10\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE11 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE11\_$CURRENT_DATE.sql.gz
pg_dump -U $USER $DATABASE12 -h $HOST | gzip - > $BACKUP_DIRECTORY/$DATABASE12\_$CURRENT_DATE.sql.gz

# Cleanup old backups
find $BACKUP_DIRECTORY/* -mtime +7 -exec rm {} \;
