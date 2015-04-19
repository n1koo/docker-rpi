#!/bin/zsh

HOST_PREFIX=docker

for n ({1..2}); do
  ssh root@$HOST_PREFIX$n "sudo apt-get -q -y install python2.7 && ln -s /usr/bin/python2.7 /usr/bin/python";
done
