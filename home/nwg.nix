{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nwg-bar
    nwg-dock-hyprland
    nwg-panel
    nwg-drawer
    nwg-look
  ];
}
