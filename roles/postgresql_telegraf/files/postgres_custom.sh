#!/bin/bash


export PGUSER=rosdbmon

### (1) LOOP THROUGH DATABASES

DATABASE_LIST=`psql -At -h localhost \
               -c "select datname from pg_database  \
                   where datname not like 'temp%' ;" -d postgres`



                for d in $DATABASE_LIST
                do

                HOST=`hostname`

                psql -At -h localhost \
                -c "select 'pgextensions,database=' || '$d' || ',' || \
                    'extension='|| extname || ' ' ||     \
                    'version=' || quote_ident (extversion) from pg_extension ;" -d $d

                done

#### EXAMPLE OUTPUT
#extensions,hostname=pgserver,database=mike,extension=pg_trgm version="1.3"
#extensions,hostname=pgserver,database=mike,extension=postgis version="1.3"


exit
