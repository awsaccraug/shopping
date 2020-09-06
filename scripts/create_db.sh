#!/bin/bash
ok() { echo -e '\e[32m'$1'\e[m'; } # Green

EXPECTED_ARGS=4
E_BADARGS=65
MYSQL=`which mysql`
 
Q1="CREATE DATABASE IF NOT EXISTS $1;"
Q2="GRANT ALL ON *.* TO '$2'@'localhost' IDENTIFIED BY '$3';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}"
 
if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: $0 dbname dbuser dbpass dbhost"
  exit $E_BADARGS
fi
 
$MYSQL -h $4 -uroot -p -e "$SQL"
