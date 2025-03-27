{ pkgs, ... }:

{
  home.packages = with pkgs; [
    galaxy-buds-client
    transmission_4-gtk
  ];
}
