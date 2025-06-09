# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# customize bash prompt
# see here: https://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
# use \w for full directory or \W for base directory
# export PS1="\e[1;32m\u@\h\W:\$\e[m "
export PS1='\[\e[1;32m\]\W:\$\[\e[m\] '

# set default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# settings for 'less'
export LESS="R" # enable colored output

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

[ -f "/home/patrickwintner/.ghcup/env" ] && . "/home/patrickwintner/.ghcup/env" # ghcup-env
