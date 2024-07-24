#!/bin/bash
useradd -m $FTP_USER
echo "$FTP_USER:$FTP_PASS" | chpasswd
mkdir -p /var/run/vsftpd/empty
echo local_root=/var/www/wordpress >> /etc/vsftpd.conf
echo write_enable=YES >> /etc/vsftpd.conf
exec vsftpd