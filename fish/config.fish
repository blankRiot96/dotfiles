set fish_greeting
fish_config prompt choose arrow
fish_add_path ~/.local/bin

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

alias c="clear"
alias py="python3.12"


source (/usr/bin/starship init fish --print-full-init | psub)

if test -f venv/bin/activate.fish
    source venv/bin/activate.fish
end
