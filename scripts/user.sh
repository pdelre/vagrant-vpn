#!/bin/bash

USER=user
FULLNAME="User"
PASSWORD=user

adduser --disabled-password --gecos "$FULLNAME,,," $USER
echo "$USER:$PASSWORD" | chpasswd
adduser $USER sudo
