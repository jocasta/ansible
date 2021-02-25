# README.md
# Ansible Role: postgresql_replica

An Ansible role that configures a PostgreSQL Replica from an existing PostgreSQL Primary 

Supported versions of Linux:

- Red Hat Enterperise Linux - 7.x
- CentOS - 7.x

## Requirements

Requires that you have a PostgreSQL Primary installed and configured in archive_mode and with a wal_level of hot_standby or above. 

## Role Variables

Available variables are listed below, along with default values:

    data_dir: {{ data_mount }}/PostgreSQL/{{ pg_ver }}/data 
    postgres_owner: postgres
    ansible_host: remote host
    primary_host: PostgreSQL primary host
    primary_host_port: 5432
    pg_port: 5432
    pg_ver: 9.5


## Example Playbook

    - hosts: pgrd01
      roles:
        - { role: postgresql_install }
        - { role: postgresql_replica }
