#!/bin/bash

## REMOVE EXISTING FILE
rm -f vagrant_hosts

## CREATE POSTGRES GROUP
echo  "[postgres_servers]" >> vagrant_hosts

## ADD POSTGRES SERVERS
grep -o "postgres.*" /etc/hosts >> vagrant_hosts




exit
