# Go
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if type rbenv > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# Rust
. "$HOME/.cargo/env"

# Deno
export DENO_INSTALL="/home/atis/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
