# CLI-Tools
The CLI tools that i use to code
- neovim
- tmux
- yazi
- zsh

# First install pkg
## Arch
- sudo pacman -S neovim yazi tmux zsh ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick npm unzip trash-cli stow ouch git
  
## Debian
- apt install tmux zsh ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide resvg imagemagick npm unzip trash-cli stow ouch git ninja-build gettext cmake curl

# Second thing you need to do
- git clone https://github.com/SoulLess-Frog/CLI-Tools.git
- cd CLI-Tools
- stow .
  
- for tmux 
  - git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# For debian you need to do this
## neovim
- git clone https://github.com/neovim/neovim.git
- cd neovim
- git checkout stable
- make CMAKE_BUILD_TYPE=RelWithDebInfo
- sudo make install
- nvim --version

## yazi 
- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
- restart shell
- rustup update
- git clone https://github.com/sxyazi/yazi.git
- cd yazi
- cargo build --release --locked
- mv target/release/yazi target/release/ya /usr/local/bin/
