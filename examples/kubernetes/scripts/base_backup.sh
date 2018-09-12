#!/bin/sh

su - stolon -c "PGHOST=localhost PGPASSWORD=\"password1\" PGPASSFILE=\"/home/stolon/backup/wal-e/\" /usr/local/bin/envdir /etc/wal-e.d/env /usr/local/bin/wal-e backup-push /stolon-data/postgres"