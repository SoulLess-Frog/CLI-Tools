# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Configure zsh-vi-mode
ZVM_SYSTEM_CLIPBOARD_ENABLED=true

() {
  local theme="${XDG_CONFIG_HOME:-$HOME/.config}/kitty/themes/noctalia.conf"
  local key value
  [[ -r "$theme" ]] || return

  while read -r key value; do
    case "$key" in
      selection_foreground) ZVM_VI_HIGHLIGHT_FOREGROUND="$value" ;;
      selection_background) ZVM_VI_HIGHLIGHT_BACKGROUND="$value" ;;
    esac
  done < "$theme"
}

function zvm_after_lazy_keybindings() {
  zvm_bindkey vicmd  'p' zvm_paste_clipboard_after
  zvm_bindkey vicmd  'P' zvm_paste_clipboard_before
  zvm_bindkey visual 'p' zvm_visual_paste_clipboard
  zvm_bindkey visual 'P' zvm_visual_paste_clipboard
}

# Add in zsh plugins
zinit ice depth=1; zinit light zsh-users/zsh-completions
zinit ice depth=1; zinit light jeffreytse/zsh-vi-mode 
zinit ice depth=1; zinit light zsh-users/zsh-autosuggestions
zinit ice depth=1; zinit light zsh-users/zsh-syntax-highlighting
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# System Clipboard
ZVM_SYSTEM_CLIPBOARD_ENABLED=true

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Aliases
alias ls='ls --color'

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

if [[ -d "$HOME/Android/cmdline-tools/latest/bin" ]]; then
    export ANDROID_HOME="$HOME/Android"
    export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> Codex installer >>>
export PATH="$HOME/.local/bin:$PATH"
# <<< Codex installer <<<
