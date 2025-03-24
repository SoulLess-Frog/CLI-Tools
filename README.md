# CLI-Tools
The CLI tools that i use to code
- neovim
- tmux
- yazi
- zsh (with plugins)

# First thing you need to do
- kitty +kitten ssh <put the ip of the server> // do it once for kitty for ssh
- git clone https://github.com/SoulLess-Frog/CLI-Tools.git
- move the files inside CLI-Tools folder to .config/ folder
  
- install tmux and zsh
  
- for tmux 
  - git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm //tmux
    
- for zsh
  - chsh -s $(which zsh)
  - sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  - git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  - git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  - git clone https://github.com/kutsan/zsh-system-clipboard ${ZSH_CUSTOM:-~/.zsh}/plugins/zsh-system-clipboard
  - put this in the .zshrc
    - plugins=( 
        git
        sudo
        zsh-autosuggestions
        zsh-system-clipboard
        zsh-syntax-highlighting
      )
    - bindkey -v // after the source $ZSH/oh-my-zsh.s

## How to for arch 
- sudo pacman -S neovim yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide imagemagick python3-venv npm
  
## How to for debian

### tmux and dependance
- apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick python3-venv npm
  
### neovim
- sudo apt install git ninja-build gettext cmake unzip curl
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
