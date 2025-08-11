fish_vi_key_bindings

bind -M visual y fish_clipboard_copy
bind -M normal yy fish_clipboard_copy
bind p fish_clipboard_paste

set fish_greeting

function starship_transient_prompt_func
end

starship init fish | source
zoxide init fish | source
alias cd="z"

enable_transience

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
