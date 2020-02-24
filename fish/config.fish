toilet -f future -F border:rainbow "Gasacchi"

set fish_greeting

# Alias 
alias v=nvim

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# PATH
# Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Installed from Yarn Global
export PATH="$HOME/.yarn/bin:$PATH"

fish_vi_key_bindings

# start starship
starship init fish | source
