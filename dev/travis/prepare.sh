#!/bin/bash

apt-get remove --purge mysql-common mysql-server-5.5 mysql-server-core-5.5 mysql-client-5.5 mysql-client-core-5.5
apt-get autoremove
apt-get autoclean
apt-add-repository ppa:ondrej/mysql-5.6 -y
apt-get update
apt-get install mysql-server-5.6 mysql-client-5.6 hhvm-dbg