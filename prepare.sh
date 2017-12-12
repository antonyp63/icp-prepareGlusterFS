#!/bin/bash


#Step 1 - install the GlusterFS client
sudo yum install -y glusterfs-client
sudo modprobe dm_thin_pool

#Step 2 -

sudo wipefs --all --force /dev/sdd

sudo echo "dm_thin_pool" | tee -a /etc/modules-load.d/dm_thin_pool.conf
