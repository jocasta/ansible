# PgBadger report generation script
#
#!/bin/sh -vvv
log_directory=/log/postgres
LOG_DATE=`date --date="1 days ago" +"%Y"-"%m"-"%d"`
echo '----'
echo 'Run date: '`date`
echo 'Report date: '$LOG_DATE
LOG_FILE=`find /log/postgres -newermt "-25 hours" -iname "*.log" | sort`
echo $LOG_FILE
REPORT_DAY=`date +"%A"`
REPORT_NAME=daily_report_$REPORT_DAY.html
echo $REPORT_NAME
cd /var/www/html/postgres/reports
/usr/bin/pgbadger $LOG_FILE  -p  '%t [%p]: [%l1][%x] user=%u,db=%d,host=%h' -O /var/www/html/postgres/reports -o $REPORT_NAME
echo 'End date: '`date`
chown -R apache:apache /var/www/html/postgres/reports
