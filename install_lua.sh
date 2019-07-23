line
echo "Install lua interceptor."
sudo apt-get install  lua5.3
sudo ln -s /usr/bin/lua5.3 /usr/bin/lua
line
echo "Install lua dev environment."
sudo apt-get install lua5.3-dev
line
echo "Install lua package management."
cd ~/sft
wget https://luarocks.org/releases/luarocks-3.0.4.tar.gz
tar zxpf luarocks-3.0.4.tar.gz
cd luarocks-3.0.4
./configure; sudo make bootstrap
echo "Installation finish."
