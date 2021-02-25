# README.md
# Ansible Role: postgresql_primary

An Ansible role that initialises a PostgreSQL Instance and Tunes this based on some inputs, most likely derived from vRA. 

Supported versions of Linux:

- Red Hat Enterperise Linux - 7.x
- CentOS - 7.x

## Requirements

Requires that you have a PostgreSQL packages installed.

## Role Variables

Available variables are listed below, along with default values:

    pg_ver: 9.5
    postgres_owner: postgres 
    data_mount: /db
    data_dir: {{ data_mount }}/PostgreSQL/{{ pg_ver }}/data 
    ansible_host: remote host
    pg_port: 5432 
    pg_password: see ansible vault files 

## Example Playbook

    - hosts: pgrd01
      roles:
        - { role: postgresql_install }
        - { role: postgresql_primary }
