#!/bin/bash
sudo sed -i.bak "/127.0.0.1 localhost/a192.168.100.10 server1" /etc/hosts
