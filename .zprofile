source "$HOME/.zprezto/runcoms/zprofile"

# Are we in the bottle?
if [[ ! -v INSIDE_GENIE ]]; then
  exec /usr/bin/genie -s
fi

