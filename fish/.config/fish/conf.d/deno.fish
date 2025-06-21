set -gx DENO_INSTALL "$HOME/.deno"
set -gx PATH $PATH "$DENO_INSTALL/bin"

# Bootstrap deno installation
if not test -f "$DENO_INSTALL/bin/deno"
    curl -fsSL https://deno.land/install.sh | sh
end