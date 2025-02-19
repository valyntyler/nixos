{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nwg-bar
    nwg-dock
    nwg-panel
    nwg-drawer
    nwg-look
  ];
}
