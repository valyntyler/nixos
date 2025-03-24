{ inputs, pkgs, ... }:

{
  # enable nixvim
  home.packages = [ inputs.nixvim.packages.${pkgs.system}.default ];

  # set as default editor
  programs.nushell.environmentVariables.EDITOR = "nvim";
  programs.nushell.environmentVariables.VISUAL = "nvim";
}
