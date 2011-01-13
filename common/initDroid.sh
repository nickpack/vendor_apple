#!/bin/ash

export PATH=/bin:/sbin:/system/sbin:/system/bin:/usr/sbin/
export LD_LIBRARY_PATH=/system/lib

[ -e /dev/console ] || /bin/mknod /dev/console c 5 1 

/bin/mknod /dev/loop0 b 7 0 &> /dev/console
/bin/mknod /dev/loop1 b 7 1 &> /dev/console
/bin/mknod /dev/loop2 b 7 2 &> /dev/console
/bin/mknod /dev/nand0p2 b 254 2 &> /dev/console

/bin/fsck_hfs -q /dev/nand0p2 &> /dev/console

if [ $? != 0 ]
then
	/bin/fsck_hfs /dev/nand0p2 &> /dev/console
fi

/bin/mount -n -o noatime /dev/nand0p2 /host &> /dev/console
/bin/chmod a+rx /host &> /dev/console

/sbin/losetup /dev/loop0 /host/idroid/system.img &> /dev/console
/sbin/losetup /dev/loop1 /host/idroid/userdata.img &> /dev/console
/sbin/losetup /dev/loop2 /host/idroid/cache.img &> /dev/console

/bin/fsck.ext2 -p /dev/loop0 &> /dev/console
/bin/fsck.ext2 -p /dev/loop1 &> /dev/console
/bin/fsck.ext2 -p /dev/loop2 &> /dev/console

/bin/mount -o noatime /dev/loop0 /system &> /dev/console
/bin/mount -o noatime,nosuid,nodev /dev/loop1 /data &> /dev/console
/bin/mount -o noatime,nosuid,nodev /dev/loop2 /cache &> /dev/console
/bin/mount -o remount,noatime,ro /dev/loop0 /system &> /dev/console

if [ -f /host/root/Library/Lockdown/activation_records/wildcard_record.plist ]
then
/bin/cat /host/root/Library/Lockdown/activation_records/wildcard_record.plist > /data/wildcard_record.plist
fi

exit 0
