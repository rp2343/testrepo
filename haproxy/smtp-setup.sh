#!/bin/bash

vmname=`hostname -f`
sudo add-apt-repository universe
apt update -y
debconf-set-selections <<< "postfix postfix/mailname string $vname"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y mailutils
