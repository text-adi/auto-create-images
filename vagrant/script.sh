#!/bin/sh

echo "vagrant:1" | sudo chpasswd
sudo touch /etc/ssh/sshd_config.d/1-login-password.conf
sudo echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config.d/1-login-password.conf
sudo systemctl restart ssh || sudo systemctl restart sshd