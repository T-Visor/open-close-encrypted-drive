#!/bin/sh

# NOTE: run script as super user!
#
# This script is used to automate the process
# of opening and mounting my encrypted Western Digital 
# hard drive. 

DEVICE='/dev/sdc'
NAME='external-wd'
MAPPED_NAME='/dev/mapper/external-wd'
MOUNT_LOCATION='/mnt/external-wd'

# open the drive
cryptsetup open $DEVICE $NAME 

# mount the drive
mount $MAPPED_NAME $MOUNT_LOCATION 

# display where the drive is mounted to
lsblk | grep $NAME
