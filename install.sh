#!/usr/bin/bash

echo "Welcome to Basic Configurator"
echo "Running this script will config the Ansible for use"
echo "Supports RHEL 8 or CentOS 8"
echo "Run this as a root user only or with the sudo"

echo "Create Ansible env"
sudo dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo dnf install -y python3
sudo dnf install -y ansible

echo "Next step go to /etc/hosts and create FQDN for all the Nodes"
sudo vim /etc/hosts

echo "Now configure the ansible inventory by adding FQDN of all the managed groups with the group"
sudo vim inventory

echo "Let this first ansible playbook setup managed nodes for you"
sudo ansible-playbook -v init.yml

echo "You are now ready to create your own playbooks, use user 'admin'"
echo "Good Luck!"
