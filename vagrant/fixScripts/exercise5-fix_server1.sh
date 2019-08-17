#!/bin/bash
sudo apt-get install sshpass -y
sudo echo -e "\n" | ssh-keygen -N "" &> /dev/null
sudo sshpass -p "vagrant" ssh-copy-id vagrant@server2
sudo sed -i '1s/^/Host *\n   StrictHostKeyChecking no\n   UserKnownHostsFile=\/dev\/null\n/' /etc/ssh/ssh_config
