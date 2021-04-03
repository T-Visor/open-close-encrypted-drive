#!/bin/sh

# NOTE: run script as super user!
#
# This script is used to automate the process
# of opening and mounting my encrypted Western Digital 
# hard drive. 

DEVICE='/dev/sdc'
NAME='wd-blue'
MAPPED_NAME='/dev/mapper/wd-blue'
MOUNT_LOCATION='/mnt/wd-blue'

# open the drive
cryptsetup open $DEVICE $NAME 

# mount the drive
mount $MAPPED_NAME $MOUNT_LOCATION 

# display where the drive is mounted to
lsblk | grep $NAME
