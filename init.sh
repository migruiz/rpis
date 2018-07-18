sudo mkdir ~/.ssh
sudo curl -o ~/.ssh/authorized_keys  "https://raw.githubusercontent.com/migruiz/rpis/master/authorized_keys" 
sudo grep -q "ChallengeResponseAuthentication" /etc/ssh/sshd_config && sudo sed -i "/^[^#]*ChallengeResponseAuthentication[[:space:]]yes.*/c\ChallengeResponseAuthentication no" /etc/ssh/sshd_config 
sudo grep -q "^[^#]*PasswordAuthentication" /etc/ssh/sshd_config && sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]yes/c\PasswordAuthentication no" /etc/ssh/sshd_config 
sudo service ssh restart
sudo apt-get -y update && sudo apt-get -y dist-upgrade
sudo reboot
