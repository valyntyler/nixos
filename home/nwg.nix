{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nwg-bar
    nwg-menu
    nwg-dock-hyprland
    nwg-hello
    nwg-panel
    nwg-drawer
    nwg-clipman
    nwg-look
  ];
}
