if [ -x /usr/bin/dircolors ]; then
    test -r ~/.config/solarized.colors && eval "$(dircolors -b ~/.config/solarized.colors)" || eval "$(dircolors -b)"
fi

alias ls='ls --color=auto'
alias ll='ls -lh --time-style long-iso --color'
alias la='ls -Alh --time-style long-iso --color'
alias grep='grep --color=auto'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

alias vi='vim'

export PATH="/usr/local/sbin:$PATH"

#=================================
# 历史记录配置
HISTSIZE=5000
HISTFILE="$HOME/.cache/zsh_history"
SAVEHIST=5000
HISTORY_IGNORE='(clear|pwd|history|tree|cd ..|l[a,l,s,h,]*)'
# HISTDUP=erase
setopt    appendhistory
setopt    sharehistory
setopt    incappendhistory

# Locale Settings
export TIME_STYLE='+%Y/%m/%d %H:%M:%S'
export TZ='Asia/Chongqing'
LANG="en_US.UTF-8"

export MYSQL_HISTFILE="$HOME/.cache/mysql_history"

# SSH Autocomplate
host=()
if [[ -r ~/.ssh/config ]]; then
    host=($host ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi

if [[ -r ~/.ssh/known_hosts ]]; then
    host=($host ${${${(f)"$(cat ~/.ssh/known_hosts{,2} || true)"}%%\ *}%%,*}) 2>/dev/null
fi

if [[ $#host -gt 0 ]]; then
    zstyle ':completion:*:(ssh|scp|sftp|rsync):*' hosts $host
fi
