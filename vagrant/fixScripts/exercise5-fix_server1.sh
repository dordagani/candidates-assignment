#!/bin/bash
sudo apt-get install sshpass -y
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N "" &> /dev/null' #for vagrant user
echo -e "\n" | ssh-keygen -N "" &> /dev/null #for root user
sudo sed -i '1s/^/Host *\n   StrictHostKeyChecking no\n   UserKnownHostsFile=\/dev\/null\n/' /etc/ssh/ssh_config
