#!/bin/bash
sudo sed -i.bak "/127.0.0.1 localhost/a192.168.100.11 server2" /etc/hosts
