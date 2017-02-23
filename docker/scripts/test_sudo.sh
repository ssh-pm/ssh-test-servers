#!/bin/bash

#This script is used to test if an user has sudo access

echo $1 | sudo -S ls > /dev/null 2> /dev/null

isSudo=$?
echo $isSudo
