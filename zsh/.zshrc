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

# Netskope certs for PHP
if [ -f "$HOME/.config/certs/netskope-bundle.pem" ]; then
  export SSL_CERT_FILE="$HOME/.config/certs/netskope-bundle.pem"
fi

export NODE_EXTRA_CA_CERTS="/Library/Application Support/Netskope/STAgent/download/nscacert.pem"
export PATH="/Users/stefan/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/stefan/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/stefan/Library/Application Support/Herd/config/php/84/"


# Herd injected NVM configuration
export NVM_DIR="/Users/stefan/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"
