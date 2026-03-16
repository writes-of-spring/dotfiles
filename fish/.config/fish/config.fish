if status is-interactive
    # Commands to run in interactive sessions can go here
    # ~/.config/fish/config.fish
    bind \ed kill-word
end

set -gx EDITOR "zed --wait"
set -gx XDG_CONFIG_HOME $HOME/.config
set fish_color_cwd 7aa2f7
set fish_color_command 7aa2f7
set fish_color_error f7768e
set fish_color_valid_path 9ece6a
set fish_color_warning e0af68
set fish_color_autosuggestion bb9af7 --dim
set fish_pager_color_progress bb9af7
set fish_pager_color_completion bb9af7
set fish_pager_color_description 2ac3de
set fish_pager_color_selected_background  --background=brmagenta
set fish_pager_color_selected_completion white --bold
set fish_pager_color_selected_prefix 1a1b26 --bold
set fish_pager_color_selected_completion 1a1b26 --bold
set fish_pager_color_selected_description 1a1b26 --bold
set fish_pager_color_prefix ff9e64 --bold
