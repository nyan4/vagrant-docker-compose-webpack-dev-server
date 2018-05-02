#Apache
sudo yum -y install httpd
sudo systemctl start httpd

# docker
sudo yum remove docker docker-common docker-selinux docker-engine
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum-config-manager --enable docker-ce-test
sudo yum-config-manager --disable docker-ce-edge
sudo yum install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# docker-composeをsudoから実行できるように/usr/local/bin/を追加
sed -i 's/\/sbin:\/bin:\/usr\/sbin:\/usr\/bin/\/sbin:\/bin:\/usr\/sbin:\/usr\/bin:\/usr\/local\/bin/g' /etc/sudoers
