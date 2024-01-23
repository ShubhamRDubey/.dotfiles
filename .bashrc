source ~/personal.sh

# Lines configured by zsh-newuser-install

#added
alias ll='ls -lAGgs'
alias l='ls'
alias battery='cat /sys/class/power_supply/BAT0/capacity'
alias ..='cd ..;echo "cd $PWD"'
alias ...='cd ../..;echo "cd $PWD"'
alias .='pwd'
alias c='clear'
alias so='source'
alias v='nvim .'
alias t='tree -Lsha 2'
alias ti='tree --gitignore -Lsha 2'
alias gs='git status'
alias ga='git add .'
alias gc='git commit'

[[ -z "$TMUX" ]] && exec tmux

cd() {
    builtin cd "$@" && ll
}
export DOTNET_CLI_TELEMETRY_OPTOUT=1

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

