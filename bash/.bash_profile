# Load Shell Dotfiles
#for file in $HOME/dotfiles/{}; do
#    [ -r "$file" ] && [ -f "$file" ] && source $file;
#done;
#unset file;

# Needed for z, github.com/rupa/z
[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# check for interactive mode for tput calls (sublimetext3 build).
# all tput commands should be put in here after the 'then' statement.
if [[ $- == *i* ]]
    then
        # http://bashrcgenerator.com/
        export PS1="\[$(tput bold)\]{\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;202m\]\W\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[$(tput bold)\]}\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;30m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
fi