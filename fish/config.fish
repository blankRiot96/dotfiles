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
alias py="python3.13"
alias pip="py -m pip"

# source (/usr/bin/starship init fish --print-full-init | psub)

function venv_test
    if test -f venv/bin/activate.fish
        source venv/bin/activate.fish
    end


    if test -f .venv/bin/activate.fish
        source .venv/bin/activate.fish
    end
end

function cd
    builtin cd $argv[1]
    venv_test
end

venv_test
