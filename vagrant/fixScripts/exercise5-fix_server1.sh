#!/bin/bash
sudo apt-get install sshpass -y
sudo -H -u vagrant bash -c 'echo -e "\n" | ssh-keygen -N "" &> /dev/null'
sudo sed -i '1s/^/Host *\n   StrictHostKeyChecking no\n   UserKnownHostsFile=\/dev\/null\n/' /etc/ssh/ssh_config
#sudo ping -c 3 192.168.100.11 > /tmp/ping.txt > this command will run from server2 to server1 later, because server2 is non available when server1 is set up
