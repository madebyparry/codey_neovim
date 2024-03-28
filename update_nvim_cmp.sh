echo
echo "-------------------------------------------"
echo
echo "removing neovim from apt"
echo
echo "-------------------------------------------"
echo
sudo apt remove neovim
echo
echo "-------------------------------------------"
echo
echo "downloading latest neovim stable"
echo
echo "-------------------------------------------"
echo
wget -O https://github.com/neovim/neovim/archive/refs/tags/stable.zip ~/.config/neovim/stable.zip
unzip stable.zip
cd neovim-stable/
echo
echo "-------------------------------------------"
echo
echo "compiling neovim"
echo
echo "-------------------------------------------"
echo
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
echo
echo "-------------------------------------------"
echo
echo "compiled neovim so neovim-stable/build/bin"
echo
echo "-------------------------------------------"
echo
echo "moving to /opt/nvim"
echo
echo "-------------------------------------------"
echo
sudo mv ~/.config/nvim/neovim-stable/build/bin/nvim /opt/nvim
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
