{ pkgs, ... }:

{
  home.packages = with pkgs.hyprlandPlugins; [
    hyprbars
  ];
}
