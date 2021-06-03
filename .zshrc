source "$HOME/.zprezto/runcoms/zshrc"

alias cr='cd $(ghq root)/$(ghq list | peco)'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zplug
source "$HOME/.zplug/init.zsh"
zplug "chitoku-k/fzf-zsh-completions"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
