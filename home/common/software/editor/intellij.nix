{inputs, ...}: let
  pkgs = inputs.nixpkgs-stable.legacyPackages.x86_64-linux;
in {
  home.packages = with pkgs; [jetbrains.idea-community];
}
