# Source local overrides if they exist
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/peterkerins/.zsh/completions:"* ]]; then
  export FPATH="/Users/peterkerins/.zsh/completions:$FPATH"
fi

# Environment setup
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm setup
FNM_PATH="/Users/peterkerins/Library/Application Support/fnm"
if [[ -d "$FNM_PATH" ]]; then
  export PATH="/Users/peterkerins/Library/Application Support/fnm:$PATH"
fi

# Initialize tools
eval "$(fnm env --use-on-cd --shell zsh)"

# Completion settings
autoload -Uz compinit && compinit
autoload -Uz zmv
autoload -U select-word-style
select-word-style bash

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select=2

# Source additional configurations
[[ -f "/Users/peterkerins/.bun/_bun" ]] && source "/Users/peterkerins/.bun/_bun"


setopt CORRECT
# Aliases
alias c="open $1 -a \"Cursor\""
alias v="open $1 -a \"Visual Studio Code\""
alias zsource="source ~/.zshrc"

# Initialize starship
eval "$(starship init zsh)"
export EZA_CONFIG_DIR="$HOME/.config/eza"

# Load syntax highlighting (should be last)
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
