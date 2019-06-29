#!/bin/bash

DATE=`date +%Y-%m-%d`

tar -zcvf  /var/www/backups/shop/backup-$DATE.tar.gz /var/www/shop/htdocs/
mysqldump -uartur -palfa12345  iva  > /var/www/backups/shop/db_backup_$DATE.sql
find  /var/www/backups/shop -type f -name '*.tar.gz' -mtime +7 -exec rm {} \;
find  /var/www/backups/shop -type f -name '*.sql' -mtime +7 -exec rm {} \;
