# Python virtual env
alias penv='source ~/pyenv/bin/activate'

# Copy to clip.
alias xcopy='xclip -selection clipboard'

# Terminal options, history.
export HISTTIMEFORMAT='%b %d %I:%M %p '    # using strftime format
export HISTSIZE=100
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll:h"

alias pk='porter kubectl -- '
alias k='kubectl'
alias h='history'
PS1="\W > "
export GREP_OPTIONS="--color=auto"
alias c='xclip -selection clipboard'

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
alias nova='cd /home/steve/code/nova'
alias core='cd code/github.com/Rising-Sun-Canada/core/'
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

# Git
alias grl='git reflog'
alias gds='git diff --shortstat'
alias grs1='git reset --soft HEAD~1'
alias gaa='git add .'
alias gst='git status'
alias gsh='git stash'
alias gshs='git stash save'
alias gshp='git stash pop'
alias gl='git pull'
alias gf='git fetch'
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
alias gbs='git branch --show-current'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log --oneline'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias grip='git rebase -i --preserve-merges'
alias grp='git rebase --preserve-merges'
alias gr='git rebase'
alias grc='git rebase --continue'
alias gbc='git branch --show-current'


function grh() {
  git reset --hard origin/$1
}

function gdss() {
  git diff --shortstat $1 $(git rev-parse HEAD)
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
export GOPATH=$HOME/code
export GOBIN=$HOME/code/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/usr/local/lib/python3.6/site-packages

# Android Home
export GRADLE_HOME=/opt/gradle/gradle-7.2
export ANDROID_HOME=/home/steve/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$GRADLE_HOME/bin
alias androidnexus='/home/steve/Android/Sdk/tools/emulator -avd Nexus_5X_API_23'

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

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

# Specify global node version on start.
nvm use 20.17.0 > /dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
conda_setup="$('/home/steve/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/steve/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/steve/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/steve/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

alias sd='eval "$conda_setup" && conda activate invokeai && cd /home/steve/code/InvokeAI && python3 scripts/invoke.py --web'

export PATH=$HOME/bin:$PATH
