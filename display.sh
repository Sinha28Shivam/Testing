#!/bin/bash

source sample.sh

# Display menu options
function display_menu() {
  echo "Select an option:"
  echo "1. Available Software"
  echo "2. Update software"
  echo "3. Delete software"
  echo "4. Raise license request"
  echo "5. Exit"
}

# Handle menu options
while true;
do
  display_menu
  read option
  
  case $option in
    1)
    #  display_installed_software
      show
      ;;
    2)
      update_software
      ;;
    3)
      echo "Enter the name of the software you want to delete: "
      read software_name
      delete_software $software_name
      ;;
    4)
      echo "Enter your user ID: "
      read user_id
      echo "Enter the name of the software you want to request a license for: "
      read software_name
      echo "Enter the license type (free or commercial): "
      read license_type
      raise_license_request $user_id $software_name $license_type
      ;;
    5)
      break
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done

