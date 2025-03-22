{ pkgs, ... }:

{
  home.packages = with pkgs; [
    android-studio-for-platform
  ];
}
