sudo apt-get install firewalld -y
sudo firewall-cmd --zone=public --permanent --add-port=22/tcp
sudo firewall-cmd --zone=public --permanent --add-port=80/tcp
sudo firewall-cmd --zone=public --permanent --add-port=443/tcp
sudo firewall-cmd --zone=public --permanent --add-port=109/tcp
sudo firewall-cmd --zone=public --permanent --add-port=143/tcp
sudo firewall-cmd --zone=public --permanent --add-port=2086/tcp
sudo firewall-cmd --zone=public --permanent --add-port=1194/tcp
sudo firewall-cmd --zone=public --permanent --add-port=2200/tcp
sudo firewall-cmd --zone=public --permanent --add-port=990/tcp
sudo firewall-cmd --zone=public --permanent --add-port=89/tcp
sudo firewall-cmd --zone=public --permanent --add-port=7100/tcp
sudo firewall-cmd --zone=public --permanent --add-port=7200/tcp
sudo firewall-cmd --zone=public --permanent --add-port=7300/tcp
sudo firewall-cmd --reload
(crontab -l && echo "#ELHX-UI") | crontab -
(crontab -l && echo "@reboot systemctl start firewalld") | crontab -
rm port.sh
