
PATH=/opt/homebrew/bin:${PATH}
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export COLUMNS="120"

export PATH="$PATH:/Applications/ACLI"
