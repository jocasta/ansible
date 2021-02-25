# README.md
# Ansible Role: postgresql_install 

An Ansible role that installs PostgreSQL x.x through the PGDG (PostgreSQL Developer Group Repositories)

Supportied versionis of Linux:

- Red Hat Enterperise Linux - 7.x
- CentOS - 7.x

## Requirements

Requires that you have enabled the PostgreSQL repos via Satellite 6 for required PostgreSQL version

## Role Variables

Available variables are listed below, along with default values:

    pg_ver: 9.5
    pg_short_ver: 95
    postgres_owner: postgres 
    postgres_home: /home/postgres
    pg_port: 5432 
    data_mount: /db
    temp_mount: /dbtemp
    backup_mount: /backup
    log_mount: /log

## Example Playbook

    - hosts: pgrd01
      roles:
        - { role: postgresql_install }
