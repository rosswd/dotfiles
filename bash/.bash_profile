# Load Shell Dotfiles
#for file in $HOME/dotfiles/{}; do
#    [ -r "$file" ] && [ -f "$file" ] && source $file;
#done;
#unset file;

# Needed for z, github.com/rupa/z
[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
