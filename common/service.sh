#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*};

makewhatis /data/man;
chcon -R u:object_r:app_data_file:s0:c512,c768 /data/man;
