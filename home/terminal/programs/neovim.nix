{ pkgs, ... }:

{
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.neovim.plugins = with pkgs.vimPlugins; [
    gruvbox
    vim-nix
  ];
}
