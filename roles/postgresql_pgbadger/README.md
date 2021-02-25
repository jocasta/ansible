# README.md
# Ansible Role: postgresql_monitoring 

An Ansible role that installs and configures PostgreSQL Monitoring, namely httpd and pgbadger.. 

Supported versions of Linux:

- Red Hat Enterperise Linux - 7.x
- CentOS - 7.x

## Requirements

Requires that you have a PostgreSQL installed and configured to log to /log and in the format that the postgresql.conf states 

## Role Variables

Available variables are listed below, along with default values:

    www_document_root: /var/www/html
    log_mount: /log


## Example Playbook

    - hosts: pgrd01
      roles:
        - { role: postgresql_install }
        - { role: postgresql_primary }
        - { role: postgresql_monitoring }
