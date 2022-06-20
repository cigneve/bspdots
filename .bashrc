#
# ~/.bashrc
#

# Path (artık profile.d'de)
#export PATH="$PATH:~/bin:~/.local/bin"
#export EDITOR="nvim"

HISTCONTROL=ignoreboth

# Add aliases before returning
if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
RESET="\[\e[39m\]"
#PS1='[\u@\h \W]\$ '
PS1="$RED[\u@\h $GREEN\w$RED]$RESET\$ "

# Set "LS_COLORS" environment variable
if [[ -f ~/bin/dir.sh ]]; then
    . "$HOME/bin/dir.sh"
fi

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
alias bob="r ~/.config/ ~/widgets"
