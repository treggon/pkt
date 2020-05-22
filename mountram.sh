sudo mkdir /tmp/ramdisk
sudo chmod 777 /tmp/ramdisk
sudo mount -t tmpfs -o size=8G myramdisk /tmp/ramdisk
mount | tail -n 1
sudo mount -a



