# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth
export HISTFILESIZE=10000

# keep adding to the end of the ~/.bash_history file rather than obliterate the file at regular intervals
shopt -s histappend

export PROMPT_COMMAND="history -a; history -n; history -r; $PROMPT_COMMAND"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#xterm-color)
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#    ;;
#*)
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#    ;;
#esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '



#If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
#    ;;
#*)
#    ;;
#esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
# }
get_current_git_branch() {
    git rev-parse --abbrev-ref HEAD 2>/dev/null
}
# parse_svn_branch() {
#     parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk -F / '{print "(svn::"$1 "/" $2 ")"}'
# }
# parse_svn_url() {
#     svn info 2>/dev/null | grep -e '^URL*' | sed -e 's#^URL: *\(.*\)#\1#g '
# }
# parse_svn_repository_root() {
#     svn info 2>/dev/null | grep -e '^Repository Root:*' | sed -e 's#^Repository Root: *\(.*\)#\1\/#g '
# }
exit_status_if_not_zero(){
  if [ $? -ne 0 ]; then 
    echo "($?)"
  fi
}
#PS1='\[\e[1;32m\]\H\[\e[0;37m\]:$?:${PWD#${PWD%/*/*/*}/}> '
#PS1=[$HOSTNAME:'$?:${PWD#${PWD%/*/*/*}/}> '
#PS1='[\033[0;32m\]\h\[\033[1;30m\]:$?:${PWD#${PWD%/*/*/*}/}> '
#PS1="\[\033[00m\]\u@\h\[\033[01;34m\] \w \[\033[31m\]\$(parse_git_branch)\$(parse_svn_branch)\[\033[00m\]>\[\033[00m\] "
#PS1="\[\e[1;32m\]\H\[\e[0;37m\]:$?:${PWD#${PWD%/*/*/*}/} \[\033[31m\]\$(parse_git_branch)\$(parse_svn_branch)\[\033[00m\]>\[\033[00m\] "
#PS1="\[\e[1;32m\]\H\[\e[0;37m\]:$?:${PWD#${PWD%/*/*/*}/} \[\033[00;35m\]\$(parse_git_branch)\$(parse_svn_branch)\[\033[00m\]\[\033[01;37m\]>\[\033[00m\] "
#PS1="\[\e[1;32m\]${HOSTNAME}\[\e[0;37m\]":'$?:${PWD#${PWD%/*/*/*}/} '"\[\033[00;35m\][\$(parse_git_branch)\$(parse_svn_branch)]\[\033[00m\]\[\033[01;37m\]>\[\033[00m\] "
#PS1="\u@\[\e[1;32m\]${HOSTNAME}\[\e[0;37m\]":'$?:${PWD#${PWD%/*/*/*}/} '"\[\033[00;35m\][\$(get_current_git_branch)]\[\033[00m\]\[\033[01;37m\]>\[\033[00m\] "
PS1="\[\e[1;32m\]${HOSTNAME} \[\e[0;37m\]"$(exit_status_if_not_zero)'${PWD#${PWD%/*/*}/}'"\[\033[00;35m\] \$(get_current_git_branch)\[\033[00m\]\[\033[01;37m\]$\[\033[00m\] "
export PS1
# export PATH=$PATH:$HOME/bin:/opt/apache-cassandra-0.8.0/bin
# export SVDIR=/home/adam/service

git config --global user.name "Adam Hayward"
git config --global user.email "adam@happy.cat"
# bzr whoami "Adam Hayward <adam@happy.cat>"
#export PATH=$PATH:$HOME/bin:/opt/apache-cassandra-0.8.0/bin
# export PATH=$PATH:$HOME/bin:$HOME/pycharm/bin
export PATH=$PATH:$HOME/bin
#export SVDIR=/home/adam/service

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias f='find -name '
alias k='kompare - &'
alias ick='ack -i'
alias less='less -x4'
alias gvim='gvim 2>/dev/null'
alias d='docker-compose'
alias dr='docker-compose run'
alias tmpfiles='find . -regextype posix-egrep -regex ".*\.(sw[mnop]|un~)$"'
alias update-elpaleta='pip install --upgrade -i https://pypi.org/simple git+ssh://git@github.com/travelperk/elpaleta.git'
alias nv='nvim'
alias tk='/home/adam/.local/bin/tk'

# alias aws-login='cat ~/.ssh/onelogin && onelogin-aws-assume-role --onelogin-username adam@travelperk.com --onelogin-subdomain travelperk --onelogin-app-id 359880 --aws-region eu-west-1 --profile prod --duration 43200 -i 426729e894215ab11ae00c464ac6ae07065bfdc7ed34216e31ba601099c653b1 -seval $(aws ecr get-login --region eu-west-1 --no-include-email) -s 60180b998524d4d05f73d269c9c03cdabca50dbf024d63be8de8dfde6ec3b716 -r eu'
# export ONELOGIN_PASS=$(< ~/.ssh/onelogin)
# export ONELOGIN_CLIENT_SECRET=$(< ~/.ssh/onelogin.sdk.client_secret)
export AWS_SDK_LOAD_CONFIG=1  # Load the AWS_PROFILE in terraform calls
# alias aws-login-prod='onelogin-aws-assume-role --onelogin-username adam@travelperk.com --onelogin-password=$ONELOGIN_PASS --onelogin-subdomain travelperk --onelogin-app-id 359880 --aws-region eu-west-1 --profile prod --duration 43200 -i 426729e894215ab11ae00c464ac6ae07065bfdc7ed34216e31ba601099c653b1 -s $ONELOGIN_CLIENT_SECRET -r eu'
# alias aws-login-staging='onelogin-aws-assume-role --onelogin-username adam@travelperk.com --onelogin-password=$ONELOGIN_PASS --onelogin-subdomain travelperk --onelogin-app-id 359880 --aws-region eu-west-1 --profile staging --duration 43200 -i 426729e894215ab11ae00c464ac6ae07065bfdc7ed34216e31ba601099c653b1 -s $ONELOGIN_CLIENT_SECRET -r eu'
# alias aws-login='aws-login-prod'
# alias ecr-login='eval $(aws --profile prod --region eu-west-1 ecr get-login --no-include-email)'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
# set runit user service directory
#if [ -d ~/service ] ; then
#   export SVDIR=~/service
#fi

# Auto-run env script on enter directory
cd () {
  builtin cd "$@"
  INWS=`echo $PWD | grep '^/home/adam/workspace'`
  if [ $INWS ] && [ -f .direnv ]; then
    echo "Found environment file .direnv"
    echo "________________________________________________________________________"
    cat .direnv
    echo "________________________________________________________________________"
    source .direnv
  fi
}
if [ -f $PWD/.direnv ]; then
    cd .
fi


### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

### Go Code
# export GOPATH="$HOME/workspace/gocode"
# export PATH="$GOPATH/bin:$PATH"

# For awscli
export PATH=~/.local/bin:$PATH

export NVM_DIR="/home/adam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# >>> talisman >>>
# Below environment variables should not be modified unless you know what you are doing
export TALISMAN_HOME=/home/adam/.talisman/bin
alias talisman=$TALISMAN_HOME/talisman_linux_amd64
export TALISMAN_INTERACTIVE=false
# <<< talisman <<<

# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# Export Codeartifact auth (generated by 'caws login')
[ -f "$HOME/.config/pip/pip.conf" ] && export PIP_INDEX_URL=$(awk -F "= " '/index-url/ {print $2}' $HOME/.config/pip/pip.conf)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/adam/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/adam/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/adam/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/adam/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

