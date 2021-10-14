#!/bin/bash
#Enforce script to run with root ,ifthe script is not executed with superuser privileges it will not attempt to create a user and returns an exit status of 1.

if [[ "${UID}" != 0 ]]
then
  echo "ERROR: You must run this script as root!"
  exit 1
fi

#Enter username, Full Name, user password.
read -p 'Enter the username to create: ' USER_NAME
read -p 'Enter the user fullname: ' COMMENT

#Create user.
useradd -c "${COMMENT}" -m ${USER_NAME}
if [[ "${?}" -ne 0 ]]
then
  echo "Error: unable to create username!"
  exit 1
fi
echo "Username: ${USER_NAME}, Fullname: ${COMMENT}"
