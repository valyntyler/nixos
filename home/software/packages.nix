{ pkgs, ... }:

{
  home.packages = with pkgs; [
    appimage-run
    galaxy-buds-client
    libreoffice
    prismlauncher
    vlc
  ];
}
