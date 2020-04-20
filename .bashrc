
# Terminal options, history.
export HISTTIMEFORMAT='%b %d %I:%M %p '    # using strftime format
export HISTSIZE=100
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll:h"
alias h='history'
PS1="\W > "
export GREP_OPTIONS="--color=auto"

# Safety first.
alias rm='rm -i'
alias cp='cp -i'
alias mkdir='mkdir -p'
alias mv='mv -i'

# System quick links.
alias home="cd ~"
alias up='cd ..'
alias hostgator='ssh c5r2b6q5@108.167.165.142 -p 2222'
alias sbrc='source ~/.bashrc'
alias brc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# Macbook quick system links.
alias p='cd /Users/stevebanton/Documents/Projects/code'
alias pgo="cd /Users/stevebanton/go/src"

# Quick commands.
alias sc='fzf | pbcopy'
alias ports='lsof -iTCP -sTCP:LISTEN -P -n'
alias ll="ls -lahG"

# Hidden files.
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO'

# Git.
alias gaa='git add .'
alias gst='git status'
alias gsh='git stash'
alias gshs='git stash save'
alias gshp='git stash pop'
alias gl='git pull'
alias gp='git push'
alias gpu='git push -u origin'
alias gfp='git fetch --prune'
alias gd='git diff'
alias gdm='git diff | mate'
alias gau='git add --update'
alias gcam='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit -m'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias grip='git rebase -i --preserve-merges'
alias grp='git rebase --preserve-merges'
alias gr='git rebase'
alias grc='git rebase --continue'

function grh() {
  git reset --hard origin/$1
}

# Golang repository makefile shortcuts.
alias mi='make install'
alias mg='make generate'
alias mgir='make generate install run'
alias mr='make run'
alias migr='make install generate run'
alias mgi='make generate install'
alias mig='make install generate'

# Path variables.
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/usr/local/lib/python3.6/site-packages

# Android Home
export ANDROID_HOME=/Users/stevebanton/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
alias androidnexus='/Users/stevebanton/Library/Android/sdk/tools/emulator -avd Nexus_5X_API_23'

# Bash Functions

# Seach for an exposed port, find what is running there.
function pts() {
  if [ $# -eq 1 ]
    then
      lsof -iTCP -sTCP:LISTEN -P -n | grep $1
    else
      echo 'requires one argument, the port number to search'
  fi
}

# Macbook. Open VSCode for present directory.
function vspwd() {
  present=$(pwd)
  open -a /Applications/Visual\ Studio\ Code.app $present
  echo $present
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
