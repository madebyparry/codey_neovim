#! /bin/bash

function print_status() {
  echo
  echo "-------------------------------------------"
  echo
  echo "$1"
  echo
  echo "-------------------------------------------"
  echo
}

function pull_nvim() {
  print_status "pulling latest neovim stable"
  cd ~/.config/nvim/neovim-stable
  git pull
}

function compile_nvim() {
  print_status "compiling neovim to neovim-stable/build/bin"
  cd ~/.config/nvim/neovim-stable
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make install

  print_status "moving to /opt/bin"
  sudo mv ~/.config/nvim/neovim-stable/build/bin/nvim /opt/nvim

  print_status "creating symlink to /usr/bin/nvim"
  sudo ln -s /opt/nvim /usr/bin/nvim
}

function install_lazygit() {
  print_status "Installing lazygit"
  LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf lazygit.tar.gz lazygit
  sudo install lazygit /usr/local/bin
}

print_status "removing current neovim"
sudo apt remove neovim
#
# Check if directory exists
#
if [ -d ~/.config/nvim/neovim-stable ]; then
  pull_nvim
else
  print_status "cloning neovim-stable directory"
  git clone https://github.com/neovim/neovim.git ~/.config/nvim/neovim-stable
fi

read -p "Compile Nvim? (y/n)?" choice
case "$choice" in
y | Y) compile_nvim ;;
n | N) echo "Skipping" ;;
*) echo "invalid selection - skipping" ;;
esac

read -p "Install Lazygit? (y/n)?" choice
case "$choice" in
y | Y) install_lazygit ;;
n | N) echo "Skipping" ;;
*) echo "invalid selection - skipping" ;;
esac
