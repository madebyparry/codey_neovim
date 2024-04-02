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
wget https://github.com/neovim/neovim/archive/refs/tags/stable.zip | ~/.config/nvim/stable.zip 
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
