#!/bin/bash
# This script is meant to be run in the User Data of each EC2 Instance while it's booting.
set -e

# Send the log output from this script to user-data.log, syslog, and the console
# From: https://alestic.com/2010/12/ec2-user-data-output/
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

# We'll hook this up with Ansible
# These variables are passed in via Terraform template interplation
#/opt/consul/bin/run-consul --server --cluster-tag-key "${cluster_tag_key}" --cluster-tag-value "${cluster_tag_value}"
