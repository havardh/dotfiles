# Created by newuser for 5.2

export PATH="$PATH:/home/havard/bin:/usr/share/intellij-idea-ultimate-edition/bin:./node_modules/.bin:/home/havard/.cargo/bin:/home/havard/lib/walkmod/bin"
export WALKMOD_HOME=/home/havard/lib/walkmod

alias ls='ls --color=auto'

alias front="cd /home/havard/itera/hb-advisory/frontend"
alias cap="cd /home/havard/itera/hb-advisory/cap"
alias cfp="cd /home/havard/itera/cfp"
alias hb="cd /home/havard/itera/hb-advisory"
alias admin="cd /home/havard/itera/admin-monitor"
alias cicero="cd /home/havard/itera/cicero"

alias sshci="ssh root@ci.int.cicero.no"
alias sshutv="ssh -t root@nw-ws-02-001.asplogon.com 'cd /u02/app/glassfish4/glassfish/domains/domain1; bash'"
alias sshtest="ssh -t root@nw-ws-02-001.asplogon.com 'cd /u02/app/glassfish4/glassfish/domains/domain2; bash'"
alias sshdev="ssh -t root@nw-ws-02-002.asplogon.com 'cd /u02/app/glassfish4/glassfish/domains/domain1; bash'"
alias nw="npm run watch:test:base -- "


export MINT=/mnt/mint/home/havard

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk

# Prompt
autoload -U promptinit && promptinit
prompt pure

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

export NVM_DIR="/home/havard/.nvm"j
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


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
