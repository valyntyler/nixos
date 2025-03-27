{ pkgs, ... }:

{
  home.packages = with pkgs; [
    appimage-run
    galaxy-buds-client
    transmission_4-gtk
  ];
}
