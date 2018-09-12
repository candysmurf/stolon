#!/bin/sh

su - stolon 
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
0 2 * * * PGHOST=localhost PGPASSWORD="password1" PGPASSFILE="/home/stolon/backup/wal-e/" /usr/local/bin/envdir /etc/wal-e.d/env /usr/local/bin/wal-e backup-push /stolon-data/postgres
0 3 * * * PGHOST=localhost PGPASSWORD="password1" PGPASSFILE="/home/stolon/backup/wal-e/" /usr/local/bin/envdir /etc/wal-e.d/env /usr/local/bin/wal-e delete --confirm retain 7

