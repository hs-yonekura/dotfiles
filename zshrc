#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz compinit
compinit
setopt auto_pushd
setopt pushd_ignore_dups
setopt correct
zstyle ':completion:*:default' menu select=1
autoload colors
zstyle ':completion:*' list-lolors "${LS_COLORS}"
chpwd() { lsd }
alias ls='lsd -a'
alias tree='lsd --tree'
plugins=(git zsh-syntax-highlighting zsh-completions)

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

export CLOUDSDK_PYTHON=/Users/yonekurayuuki/.pyenv/versions/2.7.12/bin/python
#export PATH=$HOME/.rbenv/shims:$PATH
# Customize to your needs...
export PATH=$HOME/bin:$PATH
export PATH=/usr/local:$PATH
export PATH="/usr/local/sbin:$PATH"
#export PATH=$PATH:/opt/local/bin
export JAVA_HOME=$(/usr/libexec/java_home)
alias coin='xpanes -c "bitcoin-chart-cli -d 10 --coin {}" BTC ETH NEO'

## Set path for pyenv
#export PYENV_ROOT="${HOME}/.pyenv"
#if [ -d "${PYENV_ROOT}" ]; then
    #export PATH=${PYENV_ROOT}/bin:$PATH
    #eval "$(pyenv init -)"
    #eval "$(pyenv virtualenv-init -)"
#fi
#export PATH=/Library/TeX/texbin:$PATH
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
#alias brew="env PATH=${PATH/\/Users\/yonekurayuuki\/\.pyenv\/shims:/} brew"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi

gitpush() {
  git add .
  git commit -m "$*"
  git push origin HEAD
}

alias gp=gitpush


eval "$(hub alias -s)"

alias youtube='mpsyt'
alias slack='~/github/sclack/app.py'
alias music='mpsyt'
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

git_branch() {
  echo $(git branch --no-color 2>/dev/null | sed -ne "s/^\* \(.*\)$/\1/p")
}
export PS1=`echo -e '\Ue711'`" \h:\W $ "
export ANDROID_HOME=/usr/local/share/android-sdk
export JAVA_HOME=/Library/Java/Home
export ANDROID_HOME=/usr/local/share/android-sdk
export JAVA_HOME=/Library/Java/Home

#export GOPATH=~/gocode
#export PATH="$PATH:$GOPATH/bin"
alias mario="php-gameboy ~/github/roms/mario.gb"

# added by travis gem
[ -f /Users/yonekurayuuki/.travis/travis.sh ] && source /Users/yonekurayuuki/.travis/travis.sh
#export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
# export NODE_PATH=$HOME/.nodebrew/current/lib/node_modules
export PATH="/usr/local/opt/libxml2/bin:$PATH"
alias lg='lazygit'
# eval "$(anyenv init -)"
# export PATH="${HOME}/.ndenv/bin:${PATH}"
# eval "$(ndenv init -)"
export PATH="$HOME/.anyenv/bin:$PATH"
# eval "$(anyenv init -)"
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yonekurayuuki/github/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yonekurayuuki/github/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yonekurayuuki/github/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yonekurayuuki/github/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

alias vim=/usr/local/bin/vim
