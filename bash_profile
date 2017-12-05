# Expand environment PATH.
export PATH=/usr/local/opt/mysql/bin:$PATH
export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/share/python:~/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/.composer/vendor/gonzaloserrano/pman-php-manual/bin:$PATH
export PATH=~/.composer/vendor/bin:$PATH
export PATH=~/drush/:$PATH
export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH
export PATH=/Applications/MAMP/bin/php/php7.1.8/bin:$PATH

# Expan Python packages path.
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export CLICOLOR=1
export LSCOLORS=dxbxgxgxbhegedabagacad
set -o vi

## Disable XDEBUG for composer.
export COMPOSER_ALLOW_XDEBUG=0
export COMPOSER_DISABLE_XDEBUG_WARN=0

function prompt {
    local WHITE="\[\033[1;37m\]"
    local GREEN="\[\033[0;32m\]"
    local CYAN="\[\033[0;36m\]"
    local GRAY="\[\033[0;37m\]"
    local BLUE="\[\033[0;34m\]"
    local LIGHT_CYAN="\[\033[1;36m\]"
    local LIGHT_GRAY="\[\033[0;37m\]"
    local RED="\[\033[0;31m\]"
    local LIGHT_RED="\[\033[1;31m\]"
    local WHITE="\[\033[1;37m\]"
    export PS1="${GREEN}\u${GRAY}:${LIGHT_RED}\W"' $(__git_ps1 "(%s)") '"${CYAN}"
}
# Customize prompt.
prompt

# Show current directory on terminal title.
export PROMPT_COMMAND='echo -ne "\033]0;$PWD\007"'

# Rename all files to lowercase
#for i in *; do mv $i `echo $i | tr [:upper:] [:lower:]`; done

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#export XDEBUG_CONFIG="idekey=session_name"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f $(brew --prefix)/etc/bash_completion ]; then
.  $(brew --prefix)/etc/bash_completion
fi

if [ -f "${HOME}/.bashrc" ]; then
    source ${HOME}/.bashrc
fi

# Enables iterm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Set vim as standard editor.
export VISUAL=vim
export EDITOR=$VISUAL
