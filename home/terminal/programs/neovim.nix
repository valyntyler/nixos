{ pkgs, ... }:

{
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.neovim.plugins = with pkgs.vimPlugins; [
    gruvbox-nvim
    vim-nix
    vim-commentary
    vim-fugitive
    vim-surround
    vim-vinegar
    plenary-nvim
    telescope-nvim
    nvim-treesitter
    nvim-treesitter.withAllGrammars
    nvim-lspconfig
  ];

  # lsp
  home.packages = with pkgs; [
    nil
    lua-language-server
    pyright
    rust-analyzer
  ];
}
