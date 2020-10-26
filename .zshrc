source "$HOME/.zprezto/runcoms/zshrc"

alias cr='cd $(ghq root)/$(ghq list | peco)'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source "$HOME/.config/zsh/plugins/fzf-zsh-completions/fzf-zsh-completions.plugin.zsh"
