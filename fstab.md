# FSTAB File

Automatically mounting storage volumes with /etc/fstab

This file is responsible for automatically mounting your storage devices on your system.

fstab = file system table

be very careful with working with storage...

```sh
$ vim /etc/fstab

# Entry...following line.
# <dev-name>  <mount-path> <file-system> <options> <dump> <pass>
/dev/sab1 /mnt/mdisk ext4 defaults,noauto 0 0

# defaults: rw,suid,dev,exec,auto,nouser,async
# rw - read-write
# ro - read-only
# noauto - No-Auto-Mount
```

```sh
## Check /etc/fstab is Error free - Mount All devices.
$ sudo mount -a 
```

The above entry is perfectly valid, with one problem.

`/dev/sdb1` has a dynamic value... when you restart the system it will chagne every time.

The above problem could be fixed by defining UUID

```sh
# We can check the uuid of the device by following command.
$ sudo blkid /dev/sdc1
```