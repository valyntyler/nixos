{ pkgs, ... }:

{
  home.packages = with pkgs; [
    appimage-run
    drawing
    galaxy-buds-client
  ];
}
