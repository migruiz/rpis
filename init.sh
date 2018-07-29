sudo mkdir ~/.ssh
sudo curl -o ~/.ssh/authorized_keys  "https://raw.githubusercontent.com/migruiz/rpis/master/authorized_keys" 
sudo sed -i 's|[#]*PasswordAuthentication yes|PasswordAuthentication no|g' /etc/ssh/sshd_config
sudo sed -i 's|UsePAM yes|UsePAM no|g' /etc/ssh/sshd_config
sudo service ssh restart
sudo apt-get -y update && sudo apt-get -y dist-upgrade
sudo reboot
