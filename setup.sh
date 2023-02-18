echo -n USER_NAME: 
read username
echo -n PASSWORD:
read password

apt update -y
apt upgrade -y
apt dist-upgrade

adduser --disabled-password --gecos "" "$username"
echo "${username}:${username}" | chpasswd
gpasswd -a "$password" sudo
