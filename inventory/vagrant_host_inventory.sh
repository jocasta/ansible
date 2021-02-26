#!/bin/bash

## REMOVE EXISTING FILE
rm -f vagrant_hosts

## VARIABLES
echo "\
[vars]
ansible_connection=ssh
ansible_user=ansible" >> vagrant_hosts

## CREATE POSTGRES GROUP
echo -e "\n[postgres_servers]" >> vagrant_hosts

## ADD POSTGRES SERVERS
cat /etc/hosts | grep postgres >> vagrant_hosts




exit
