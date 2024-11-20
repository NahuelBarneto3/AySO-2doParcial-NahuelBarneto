(
echo n
echo p
echo 1
echo
echo +1G
echo n
echo p
echo 2
echo
echo +1G
echo n
echo p
echo 3
echo
echo +1G
echo n
echo e
echo
echo +3G
echo n
echo
echo +1.5G
echo n
echo
echo +1.3G
echo t
echo 1
echo 82
echo t
echo 2
echo 8E
echo t 
echo 3
echo 8E
echo t
echo 5
echo 8E
echo t
echo 6
echo 8E
echo w
) |sudo fdisk /dev/sdc

sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
free -h
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6

sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L .9G vgDevelopers -n lvDevops
sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo pvs

sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin

sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin

sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin

df -h
lsblk -f
