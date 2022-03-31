if [ -f /etc/bashrc ]; then
      . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

set -o notify
set -o noclobber
#set -o ignoreeof
#set -o nounset
#set -o xtrace          # useful for debuging

# Enable options:
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s mailwarn
shopt -s sourcepath
shopt -s no_empty_cmd_completion  # bash>=2.04 only
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob        # necessary for programmable completion

complete -C '/Users/soutamo/Library/Python/2.7/bin/aws_completer' aws

# Disable options:
shopt -u mailwarn
unset MAILCHECK         # I don't want my shell to warn me of incoming mail


export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
export HISTIGNORE="&:bg:fg:ll:h"
export HOSTFILE=$HOME/.hosts    # Put a list of remote hosts in ~/.hosts

PS1="[\u@\h] \w>\n(\$?) \\$ "
#export LESS='-ceiM'
# For GIT
export LESS='-eiWR'

GnuBin=/usr/local/opt/coreutils/libexec/gnubin
GOROOT=/usr/local/go

SPLUNK_HOME=/Applications/Splunk

PATH=/opt/homebrew/bin:${PATH}
PATH=${PATH}:${GOROOT}/bin:${GnuBin}
PATH=${PATH}:${SPLUNK_HOME}/bin

if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# Aliases
alias   l='ls -F'
alias   ll='ls -Fla'
alias   lst='ls -Fltr'
alias   lsta='lst -Fltra'

alias	m=less
alias	j='jobs -l'

alias	psg='ps -fe | egrep -i '
alias	cat2null='cat > /dev/null'

export	TEMP_DIR=~/Downloads

alias	cat_null='cat > /dev/null'
alias	SC='source ~soutamo/.bashrc'
alias	Sync-GIT='OLD_DIR=$(pwd);FOO=~soutamo/GIT && for i in $(ls "${FOO}"); do echo "${FOO}/${i}" && cd "${FOO}/${i}" && git pull; done;cd "${OLD_DIR}";unset FOO;unset OLD_DIR'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[ -f ~soutamo/.git-completion.bash ] && source ~soutamo/.git-completion.bash
[ -f ~soutamo/.bash_complete ] && source ~soutamo/.bash_complete
[ -f /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion ] && source /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
[ -f /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion ] && source /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion

alias   aws_kms_avaa='aws kms decrypt --ciphertext-blob fileb://<(echo $cipher | base64 -D) --output text --query Plaintext | base64 -D'
alias   ls_ssh_hosts='egrep ^Host ~/.ssh/config'

complete -C /usr/local/bin/terraform terraform

export COLUMNS="120"

export PATH="$PATH:/Applications/ACLI"
