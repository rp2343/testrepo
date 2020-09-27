#!/bin/bash

vmname=`hostname -f`
apt-get -y update
sudo add-apt-repository universe
debconf-set-selections <<< "postfix postfix/mailname string $vname"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y mailutils
