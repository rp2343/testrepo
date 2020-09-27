#!/bin/bash

sudo vmname=`hostname -f`
sudo add-apt-repository universe
sudo apt update -y
sudo debconf-set-selections <<< "postfix postfix/mailname string $vname"
sudo debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
sudo apt update -y
sudo apt-get install -y mailutils
