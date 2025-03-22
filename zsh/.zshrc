# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/peterkerins/.zsh/completions:"* ]]; then
  export FPATH="/Users/peterkerins/.zsh/completions:$FPATH"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

eval "$(fnm env --use-on-cd --shell zsh)"
eval "$(starship init zsh)"
export BAT_THEME="base16"

# tabtab source for packages
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Initialize zsh completions (added by deno install script)
autoload -Uz compinit && compinit

# bun completions
[[ -f "/Users/peterkerins/.bun/_bun" ]] && source "/Users/peterkerins/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
FNM_PATH="/Users/peterkerins/Library/Application Support/fnm"
if [[ -d "$FNM_PATH" ]]; then
  export PATH="/Users/peterkerins/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

# Function to change directory based on the argument
feedlync() {
  local base_path=~/Code
  case "$1" in
    admin)
      cd "$base_path/feedlync-admin" || return
      ;;
    spa)
      cd "$base_path/feedlync-spa" || return
      ;;
    api)
      cd "$base_path/feedlync-api"  || return
      ;;
    types)
      cd "$base_path/feedlync-types" || return
      ;;
    *)
      echo "Usage: fl {admin|spa|api|types}"
      return 1
      ;;
  esac
}

# zsh-syntax-highlighting
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Completion settings
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select=2
