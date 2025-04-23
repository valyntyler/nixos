{ pkgs, ... }:

{
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.neovim.plugins = with pkgs.vimPlugins; [
    gruvbox
    vim-nix
    vim-commentary
    vim-fugitive
    vim-surround
    vim-vinegar
    plenary-nvim
    telescope-nvim
  ];
}
