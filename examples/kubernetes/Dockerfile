FROM sorintlab/stolon:master-pg10
#FROM bitnine/stolon:master-ag1.3.1

RUN apt-get update && \
   apt-get install -y python3-pip python3.5 lzop pv daemontools && \
   pip3 install wal-e && \
   pip3 install envdir

RUN mkdir -p /etc/wal-e.d/env && \
mkdir -p /home/stolon/backup/wal-e && \
echo 'file://localhost/home/stolon/backup/wal-e/' > /etc/wal-e.d/env/WALE_FILE_PREFIX && \
chown -R stolon:stolon /etc/wal-e.d && \
chown -R stolon:stolon /home/stolon/backup

EXPOSE 5432

RUN mkdir -m 755 -p /etc/service/cron
COPY scripts/start_cron.sh /etc/service/cron/run 
RUN chmod 755 -R /etc/service/cron/run

RUN mkdir -m 755 -p /etc/cron.d
COPY scripts/wale_cron.sh /etc/cron.d/
RUN chmod 755 -R /etc/cron.d

