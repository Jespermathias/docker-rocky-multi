#!/bin/bash

mkdir /$HOME/.ssh/
chmod 700 /$HOME/.ssh/

ssh-keygen -t rsa -b 4096 -f /$HOME/.ssh/id_rsa -N ""

sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ansible@rocky1
sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ansible@rocky2
sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ansible@rocky3