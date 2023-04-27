source "$HOME/.zplug/init.zsh"
zplug "zsh-users/zsh-completions", as:plugin
zplug "chitoku-k/fzf-zsh-completions", as:plugin
zplug "docker/cli", as:plugin, depth:1, use:"contrib/completion/zsh"
zplug "romkatv/powerlevel10k", as:theme, depth:1, use:"powerlevel10k.zsh-theme"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

alias ll='ls -lh'
alias la='ls -lha'
alias k='kubectl'

if [ `uname` = "Darwin" ]; then
  alias ls='ls -G'
else
  alias ls='ls --color=auto'
fi

zplug load --verbose

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.p10k.zsh ] && source ~/.p10k.zsh

if type kubectl > /dev/null 2>&1; then
  source <(kubectl completion zsh)
fi

if type helm > /dev/null 2>&1; then
  source <(helm completion zsh)
fi
