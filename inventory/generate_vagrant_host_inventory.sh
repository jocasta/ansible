#!/bin/bash

## REMOVE EXISTING FILE
rm -f vagrant_hosts

## CREATE POSTGRES GROUP
echo  "[postgres_servers]" >> vagrant_hosts

## ADD POSTGRES SERVERS
grep -o "postgres.*" /etc/hosts >> vagrant_hosts

## ADD PGBOUNCER
if grep -q pgbouncer /etc/hosts ; then
echo -e  "\n[pgbouncer_nodes]" >> vagrant_hosts
grep -o "pgbouncer.*" /etc/hosts >> vagrant_hosts
fi


exit
