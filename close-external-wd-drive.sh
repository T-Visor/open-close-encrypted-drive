#!/bin/sh

# NOTE: run script as superuser!
#
# This script is used to automate the process
# of umounting and closing my encrypted Western Digital 
# hard drive. 

TIMESHIFT_MOUNTING_POINT='/run/timeshift/backup'
MOUNT_LOCATION='/mnt/external-wd'
NAME='external-wd'

# unmount this location first if a timeshift backup was ran
([ ! -z $TIMESHIFT_MOUNTING_POINT ] && umount $TIMESHIFT_MOUNTING_POINT)

# unmount the drive
umount $MOUNT_LOCATION 

# close the drive
cryptsetup close $NAME 
