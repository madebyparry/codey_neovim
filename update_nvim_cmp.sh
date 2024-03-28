sudo apt remove neovim
wget https://github.com/neovim/neovim/archive/refs/tags/stable.zip
unzip stable.zip
cd neovim-stable/
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
mv neovim-stable/build/bin/nvim /opt/nvim
sudo mv neovim-stable/build/bin/nvim /opt/nvim
#cd ../
#build/bin/nvim
#ls build/bin/
#ls build/
#ls
#/opt/nvim-linux64/bin/nvim
#ls /opt/nvim-linux64/bin/nvim
#make CMAKE_BUILD_TYPE=RelWithDebInfo
#sudo make install
#sudo apt install gettext
#sudo apt install cmake
