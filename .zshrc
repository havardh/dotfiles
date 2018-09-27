# Created by newuser for 5.2

#export PATH="$PATH:/home/havard/bin:/usr/share/intellij-idea-ultimate-edition/bin:./node_modules/.bin:/home/havard/.cargo/bin:/home/havard/lib/walkmod/bin"
#export WALKMOD_HOME=/home/havard/lib/walkmod

export PATH="./bin:$PATH:./node_modules/.bin:/home/havard/apps/javaflow/bin:/home/havard/.cargo/bin:/home/havard/apps/sonarlint/bin:/opt/glassfish4/bin"
export RUST_SRC_PATH="/usr/src/rust/src"

export EMSDK_HOME="/home/havard/lib/emsdk-portable"
export ZPLUG_HOME="/home/havard/lib/zlug"
export MACONOMY_RPC_URL='https://portal.itera.no/DeltekTouch/Maconomy/Time_en_GB_MCS/maconomyshared/backend/RemoteCall.php'

PATH="$PATH:$EMSDK_HOME:$EMSDK_HOME/clang/fastcomp/build_incoming_64/bin:$EMSDK_HOME/emscripten/incoming"

alias ls='ls --color=auto'
alias workflow-dev='WORKFLOW_DEV_MODE=true /home/havard/dev/workflow/packages/workflow-cmd/cli.js'

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

alias front="cd /home/havard/cicero/hb-advisory/frontend"
alias cap="cd /home/havard/cicero/cap"
alias cfp="cd /home/havard/cicero/cfp"
alias root="cd /home/havard/cicero/advisory-root"
alias websphere="cd /home/havard/apps/websphere"
alias mad="cd /home/havard/itera/mad.itera.no"
#alias cfp="cd /home/havard/itera/cfp"
alias hb="cd /home/havard/cicero/hb-advisory"
#alias admin="cd /home/havard/itera/admin-monitor"
#alias cicero="cd /home/havard/itera/cicero"

alias sshci="ssh root@ci-ut-20-004.global.cicero.no"
alias sshutv="ssh -t root@nw-ws-02-001.asplogon.com 'cd /u02/app/glassfish4/glassfish/domains/domain1; bash'"
alias sshtest="ssh -t root@nw-ws-02-001.asplogon.com 'cd /u02/app/glassfish4/glassfish/domains/domain2; bash'"
alias sshdev="ssh -t root@nw-ws-02-002.asplogon.com 'cd /u02/app/glassfish4/glassfish/domains/domain1; bash'"
alias nw="npm run watch:test:base -- "

alias comment4000="cat ~/data/4001 | xclip -sel clip"
alias esfix="git st --porcelain | awk '{print $2}' | xargs eslint --fix"

alias es-branch="{ git st --porcelain | awk '{print $2}'  & git diff --name-only master...HEAD; } | grep .*\.js$ | xargs eslint"
alias esfix-branch="{ git st --porcelain | awk '{print $2}'  & git diff --name-only master...HEAD; } | grep .*\.js$ | xargs eslint --fix"

alias mvn-ci="mvn clean install -DskipTests -Dcheckstyle.skip"

export MACONOMY_RPC_URL='https://touch.itera.no/deltektouch/maconomy/time/maconomyshared/backend/RemoteCall.php'

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Ocaml
# . /home/havard/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval $(opam config env)
#opam update
#opam switch 4.02.3

#export MINT=/mnt/mint/home/havard

export JAVA_HOME=/usr/lib/jvm/java-8-jdk

# Prompt
source ~/lib/zsh-git-prompt/zshrc.sh
PROMPT='%~%b$(git_super_status)
 $ '

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/havard/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#export NVM_DIR="/home/havard/.nvm"j
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# key bindings
#bindkey "\e[1~" beginning-of-line
#bindkey "\e[4~" end-of-line
#bindkey "\e[5~" beginning-of-history
#bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
#bindkey "\e[2~" quoted-insert
bindkey "^[[1;5C" forward-word
#bindkey "\eOc" emacs-forward-word
bindkey "^[[1;5D" backward-word
#bindkey "\eOd" emacs-backward-word
#bindkey "\ee[C" forward-word
#bindkey "\ee[D" backward-word
#bindkey "^H" backward-delete-word
# completion in the middle of a line
#bindkey '^i' expand-or-complete-prefix
source /usr/share/nvm/init-nvm.sh


# Plugins
source ~/lib/zplug/init.zsh

zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
