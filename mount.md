# Mount Command

## Formatting and Mounting Storage Volumes... 

Desktop linux have feature of auto detecting and mounting drives.

```sh
# list all the block devices that are attached to system.
$ lsblk 
```

NOTE: For every mount device linux named it by itself.
with naming convention sda, sdb, sdc ...

sda1, sda2, ... are considered as partitions of the block device.

```txt
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 931.5G  0 disk 
├─sda1   8:1    0   450M  0 part 
├─sda2   8:2    0   100M  0 part /boot/efi
├─sda3   8:3    0    16M  0 part 
├─sda4   8:4    0 389.3G  0 part 
├─sda5   8:5    0   845M  0 part 
└─sda6   8:6    0 540.9G  0 part /mnt/disk2
sdb      8:16   0   477G  0 disk 
├─sdb1   8:17   0   8.4G  0 part [SWAP]
├─sdb2   8:18   0 186.3G  0 part /run/timeshift/backup
└─sdb3   8:19   0 282.3G  0 part /mnt/development
```

```sh
# List of storage devices too.
$ sudo fdisk -l
```

Type of storage device doesnt matter.
It could be:
- vitrual storage device.
- physical storage device.

```sh
# List all of the mounted devices on the system.
mount | grep sdb

# Unmounting
sudo umount [device-path] [mount-path]

# unmount device by device path
sudo umount /dev/sdb

# Check device is mounted or not.
$ mount | grep sda

# Open f-disk wizard.
$ sudo fdisk /dev/sdb 
```

> p - To print list of partitions.
> g - To create new empty GTP partition table.
> n - To create new partition.
> w - To write perminent changes.

You can't use the device/partition until the file system is attached to it.

```sh
# make-file-system
$ sudo mkfs.ext4 /dev/sdb1

# exfat is microsoft technology
$ sudo mkfs.exfat -n "label" /dev/sdb1

# To download dependencies for using exfat filesystems.
$ sudo apt install exfat-utils exfat-fuse

## List memory usage on file system.
df -h

## Mount storage devices manually.
mount /dev/sdc1 /mnt/attach/path

# Search files that are using lots of space on servers.
$ which ncdu

# Exclude the attached file-systems.
$ sudo ncdu -x

# A very very important file on your linux machine...
$ cat /etc/fstab

# <file-sys> <mount> <type> <options> <dumb> <pass>  
# UUID=3442  /  ext4  noatime,errors=remount-ro 0 0
```