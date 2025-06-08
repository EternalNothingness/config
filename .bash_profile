# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
# customize bash prompt
# use \w for full directory or \W for base directory
export PS1="\e[1;32m\W:\$\e[m "

