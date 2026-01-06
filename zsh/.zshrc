
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
export EDITOR="code --wait"
# Initialize tools
eval "$(fnm env --use-on-cd --shell zsh)"

# Completion settings
autoload -Uz compinit && compinit
autoload -Uz zmv
autoload -U select-word-style




zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select=2

# Source additional configurations
[[ -f "/Users/peterkerins/.bun/_bun" ]] && source "/Users/peterkerins/.bun/_bun"


alias zsource="source ~/.zshrc"

export EZA_CONFIG_DIR="$HOME/.config/eza"

# Initialize starship
eval "$(starship init zsh)"
# Load syntax highlighting (should be last)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Key bindings for option+left/right (word navigation)
bindkey "^[b" backward-word
bindkey "^[f" forward-word
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^[[1;3A" up-line-or-search
bindkey "^[[1;3B" down-line-or-search
bindkey "^[^?" backward-kill-word