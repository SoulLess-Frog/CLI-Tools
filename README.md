# CLI-Tools
The CLI tools that i use to code
- neovim
- tmux
- yazi
- zsh (with plugins)

# First thing you need to do
- git clone https://github.com/SoulLess-Frog/CLI-Tools.git
- move the files inside CLI-Tools folder to .config/ folder and .zshrc to home
  
- for tmux 
  - git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## How to for arch 
- sudo pacman -S tmux zsh starship neovim yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick npm unzip trash-cli
  
## How to for debian

### tmux and dependance
- apt install tmux zsh ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick npm unzip trash-cli
- curl -sS https://starship.rs/install.sh | sh
  
### neovim
- sudo apt install git ninja-build gettext cmake curl unzip trash-cli
- git clone https://github.com/neovim/neovim.git
- cd neovim
- git checkout stable
- make CMAKE_BUILD_TYPE=RelWithDebInfo
- sudo make install
- nvim --version

### yazi 
- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
- restart shell
- rustup update
- git clone https://github.com/sxyazi/yazi.git
- cd yazi
- cargo build --release --locked
- mv target/release/yazi target/release/ya /usr/local/bin/
