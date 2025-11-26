export DSA=$HOME/.dsa

# ZSH Setup
source "$DSA/zsh/options.zsh"
source "$DSA/zsh/aliases.zsh"
source "$DSA/zsh/kubernetes.zsh"

# Golang
export GOPATH=~/go

# Cargo & Rust
export CARGO_TARGET_DIR=~/.cargo/target

# Path stuff
export PATH=~/.composer/vendor/bin/:$GOPATH/bin:/usr/homebrew/bin:/usr/local/share/dotnet/dotnet:$PATH

# Laravel Herd
export PATH="/Users/stefan/Library/Application Support/Herd/bin/":$PATH

# Load fzf for Zsh
if command -v fzf &> /dev/null; then
  source <(fzf --zsh)
fi

# if command -v op >/dev/null; then
#   eval "$(op inject -i ~/.zsh_secrets)"
# fi

# Load Starship
if command -v starship &> /dev/null; then
  eval "$(starship init zsh)"
fi

# Load Zoxide
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
fi

# Load Direnv
if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

# Load atuin
if command -v atuin &> /dev/null; then
  export ATUIN_STYLE=compact
  export ATUIN_SEARCH_MODE=fuzzy
  eval "$(atuin init zsh)"
fi
