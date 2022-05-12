# Go
export PATH=$PATH:/usr/local/go/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if type rbenv > /dev/null 2>&1; then
  eval "$(rbenv init -)"
fi

# Rust
export PATH="$HOME/.cargo/env:$PATH"

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
