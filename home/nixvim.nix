{ inputs, pkgs, ... }:

{
  # enable nixvim
  home.packages = [ inputs.nixvim.packages.${pkgs.system}.default ];
}
