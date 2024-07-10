# run using e.g curl: 
# curl -s  https://raw.githubusercontent.com/Cecron/ansible_desktop_config/main/bootstrap.sh | sudo bash -s
apt update
apt upgrade --yes
# apt autoremove --yes
apt install --yes software-properties-common
add-apt-repository --yes --update ppa:ansible/ansible
apt update
apt install --yes --no-install-recommends ansible git
