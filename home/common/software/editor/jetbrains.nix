{
  inputs,
  pkgs,
  ...
}: let
  pkgs-stable = import inputs.nixpkgs-stable {
    inherit (pkgs.stdenv.hostPlatform) system;
    config.allowUnfree = true;
  };
in {
  home.packages = [
    pkgs-stable.jetbrains.idea-community
    pkgs.jetbrains.rider
  ];
}
