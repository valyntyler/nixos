{ pkgs, ... }:

{
  home.packages = with pkgs; [ tmux ];
  # programs.tmux.enable = true;
  # programs.tmux.plugins = with pkgs.tmuxPlugins; [
  #   tmux-floax
  #   vim-tmux-navigator
  # ];
}
