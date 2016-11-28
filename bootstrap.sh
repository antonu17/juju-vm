#!/bin/sh

apt-get update
apt-get -y install python-minimal
touch /root/.ansible_bootstrapped
