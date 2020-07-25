set fish_greeting

# Alias 
alias v=neovide

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias devg='cd ~/xxx/.dev/gasacchi/re-gasacchi'
alias devgs='cd ~/xxx/.dev/gasacchi/server'
alias anime='cd ~/xxx/.anime/'

# PATH
# FZF
#export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --follow --exclude .git --exclude .vim'
# editor
export EDITOR=nvim
# Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Installed from Yarn Global
export PATH="$HOME/.yarn/bin:$PATH"

fish_vi_key_bindings

# start starship
starship init fish | source
