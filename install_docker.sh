echo "Downloading related docker software-package......"
wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.09.0~3-0~ubuntu-bionic_amd64.deb
wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/containerd.io_1.2.0-1_amd64.deb
wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce-cli_18.09.0~3-0~ubuntu-bionic_amd64.deb

line
echo "Installing docker......"
sudo dpkg -i containerd.io_1.2.0-1_amd64.deb
sudo dpkg -i docker-ce-cli_18.09.0~3-0~ubuntu-bionic_amd64.deb
sudo dpkg -i docker-ce_18.09.0~3-0~ubuntu-bionic_amd64.deb

line
echo "Begin to add $USER into docker user group......"
sudo groupadd docker
sudo usermod -aG docker $USER
echo Logout and login again and then you can run docker without root permission.

line
echo "Configing registory mirror for China and restart docker......"
sudo cp ~/ini/daemon.json /etc/docker
service docker restart

line
echo "Cleaning up......"
rm containerd.io_1.2.0-1_amd64.deb docker-ce-cli_18.09.0~3-0~ubuntu-bionic_amd64.deb docker-ce_18.09.0~3-0~ubuntu-bionic_amd64.deb

line 
echo "Task done, Goodbye!"