#!/bin/bash
sudo apt-get install sshpass -y
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N "" &> /dev/null' #For vagrant user
echo -e "\n" | ssh-keygen -N "" &> /dev/null #For root user
sudo sed -i '1s/^/Host *\n   StrictHostKeyChecking no\n   UserKnownHostsFile=\/dev\/null\n/' /etc/ssh/ssh_config
sudo -H -u vagrant bash -c 'sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.10' #for vagrant user 
sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.10 #for root user
sudo -H -u vagrant bash -c "ssh vagrant@192.168.100.10 'sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.11'" #for vagrant user on server1
ssh vagrant@192.168.100.10 "sudo su -c 'sshpass -p "vagrant" ssh-copy-id vagrant@192.168.100.11'" #for root user on server1
