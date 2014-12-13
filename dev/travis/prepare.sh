#!/bin/bash

sudo apt-get remove --purge mysql-common mysql-server-5.5 mysql-server-core-5.5 mysql-client-5.5 mysql-client-core-5.5
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-add-repository ppa:ondrej/mysql-5.6 -y
sudo apt-get -qq update
export DEBIAN_FRONTEND=noninteractive
sudo apt-get -y -qq install mysql-server-5.6 mysql-client-5.6 hhvm-dbg
