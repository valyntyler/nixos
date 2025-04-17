{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tmux
    tmuxPlugins.tmux-floax
    tmuxPlugins.vim-tmux-navigator
  ];
}
