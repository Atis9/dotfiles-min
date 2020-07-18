source "$HOME/.zprezto/runcoms/zshenv"

# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
