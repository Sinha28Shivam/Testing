#!/bin/bash

source sample.sh
# Displaying installed software
function display_installed_software() {
  dpkg --list | grep "^ii" | awk '{print $2}'
}

# Updating software
function update_software() {
  sudo apt-get update
  sudo apt-get upgrade -y
}

# Deleting software
function delete_software() {
  sudo apt-get remove $1
}

# Raising license requests
function raise_license_request() {
  mongo --eval "db.license_requests.insertOne({user_id: '$1', software_name: '$2', license_type: '$3', status: 'pending'})" 
}

