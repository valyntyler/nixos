{ inputs, pkgs, ... }:

{
  programs.wofi.enable = true;

  # pickers
  home.packages = [
    inputs.wofirefox.packages.${pkgs.system}.default
    inputs.wofiemail.packages.${pkgs.system}.default
  ];
}
