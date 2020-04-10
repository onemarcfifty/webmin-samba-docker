#!/bin/bash
#apt-get update && apt-get upgrade -y
echo hello this is a changed version
echo I am not sure if this is a good change
echo we will just merge this line
wait
if [ ! -f /data/webmin/config ];
then
cp /etc/samba/* /data/samba/. && cp /etc/webmin/* /data/webmin/.
fi
wait
ln -f /data/samba/* /etc/samba/ && ln -f /etc/webmin/* /data/webmin/
service webmin start
service smbd start
service nmbd start
while true
do
if [[ $(service webmin status) = *stopped* ]]
then
break
else
sleep 5m
fi
done
