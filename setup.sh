apt-get install openssh-server
apt-get install openssh-client
apt-get install sshpass
ssh-keygen
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.orig
sed 's/StrictModes\ yes/StrictModes\ no/g' /etc/ssh/sshd_config > /etc/ssh/sshd_config
ssh-copy-id root@127.0.0.1
crontab /opt/pi_phone_home/cron.txt