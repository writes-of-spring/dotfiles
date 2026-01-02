if status is-interactive
    # Commands to run in interactive sessions can go here
    # ~/.config/fish/config.fish
    bind \ed kill-word
end

set -gx EDITOR "nvim"

set fish_color_cwd 7aa2f7
set fish_color_command 7aa2f7
set fish_color_error f7768e
set fish_color_valid_path 9ece6a
set fish_color_warning e0af68
set fish_color_autosuggestion bb9af7 --dim