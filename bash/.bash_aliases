# Navigation
alias ..="cd .."
alias ...="cd ../.."

# Shortcuts
alias dl="cd $HOME/Downloads"
alias dt="cd $HOME/Desktop"
alias si="cd $HOME/Sites"

# Be Safe
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

# Directory Listings
alias ls="ls -F"
alias lsa="ls -a"
alias lsl="ls -la"

# Git
alias g="git"

# Media
alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"

# cat
alias cat="ccat $*"
alias cat0="/bin/cat $*"

# webdev
alias pss="python -m SimpleHTTPServer"
alias phps0="php -S localhost:8000"
alias phps1="php -S localhost:8001"

# progs
alias psy="psysh"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias usblocalip="ipconfig getifaddr en3"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
