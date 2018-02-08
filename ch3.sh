#Networking 3 Linux
#Alex Malm
#Ch. 3
sudo cd ~/Documents

$echo "ATA_ID is exported to a file ATAid.txt using sudo"
touch ATAid.txt
/lib/udev/ata_id --export /dev/sda | ATAid.txt
head ATAid.txt
$echo "Current Directory is changed to documents, and output from udevadm is piped to devices.txt"
touch devices.txt
udevadm info --query=all --name=/dev/sda | devices.txt
head devices.txt

$echo "Next, we will pipe the udevadm monitor to 'less'. "

udevadm monitor | less

rm ATAid.txt
rm devices.txt
cd ~
