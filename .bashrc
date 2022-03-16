export SHELL=/usr/local/bin/bash
export EDITOR='vim'
export LESS="-Nmsx4erX"
export PATH=/usr/local/sbin:/usr/local/bin:/usr/local/heroku/bin:$HOME/.fastlane/bin:/Users/saslani/Library/Android/sdk/platform-tools:/Applications/Genymotion.app/Contents/MacOS/tools/:/usr/local/Cellar/node/9.5.0/libexec/bin:$PATH
export NLS_LANG="American_America.UTF8"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home
export JDK_HOME=`/usr/libexec/java_home`
export RBENV_ROOT=/usr/local/var/rbenv
export ANDROID_SDK=/Users/myuser/Library/Android/sdk

# Makefile
complete -W "\`grep -oE '^[a-zA-Z0-9_.-]+:([^=]|$)' ?akefile | sed 's/[^a-zA-Z0-9_.-]*$//'\`" make

# alias
alias ls="ls -G"
alias ll="ls -alG"
alias more="less"
alias tree="tree -C"
alias ping="ping -c 10"
alias be="bundle exec"
alias mvn-skip="mvn package -Dmaven.test.skip=true"
alias dev="cd ~/dev"
alias devmynd="cd ~/dev/devmynd"
alias pi="pip install -r requirements.txt"
alias vgs="vagrant global-status --prune"
alias utc="date -u"
alias gpr="git pull --rebase"
alias gst="git status"
alias emacs="emacs -nw"
alias ec="emacsclient -n"
alias htop="sudo htop"
alias top=htop
alias dc="docker-compose"

# docker attach sdge_dev_api_1
alias dca="docker attach"

# docker exec api bundle install
# docker exec api /bin/bash
alias dce="docker-compose exec"

# docker-compose run api rails c
alias dcr="docker-compose run"

alias dcu="docker-compose up"
alias dcd="docker-compose down"

PROMPT_DIRTRIM=2

if [ -n "$INSIDE_EMACS" ]; then
  PS1="[\w]\$ "
else
  function pc {
    [ -d .git ] && git name-rev --name-only @
  }
  PS1="\[$(tput bold)\]\[$(tput setaf 2)\][\[$(tput setaf 2)\]\t]\[$(tput setaf 4)\] \W\\$ \[$(tput sgr0)\]"
fi

# python env: virtualenv, virtualenvwrapper, and autoenv
export WORKON_HOME=$HOME/dev/.virtualenvs
export PROJECT_HOME=$HOME/dev
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
## autoenv
source /usr/local/bin/activate.sh
# end python env

# autocomplete
complete -C aws_completer aws
. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/lein-completion.bash
. /usr/local/etc/bash_completion.d/tmux
. ~/make_target_completion.bash

# user-specific settings that aren't version controlled.
private_settings="$HOME/.`whoami`.bashrc"
if [ -e $private_settings ]; then
    . $private_settings
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NVM_DIR="/Users/saslani/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

complete -C /usr/local/bin/vault vault

export PATH="$HOME/.rbenv/bin:$PATH"
. "$HOME/.cargo/env"
