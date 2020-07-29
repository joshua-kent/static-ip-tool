#!/bin/bash

if [[ `whoami` != 'root' ]]
then
    echo 'Please run this script as root.'
    exit 1
fi

cp ./ipsetup /usr/bin
cp ./ipsetup.service /etc/systemd/system
cp ./ipsetup-edit /usr/bin
systemctl daemon-reload

