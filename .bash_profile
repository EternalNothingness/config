# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

# customize bash prompt
# see here: https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
# use \w for full directory or \W for base directory
export PS1="\e[1;32m\W:\$\e[m "

# set default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# settings for 'less'
export LESS="R" # enable colored output


