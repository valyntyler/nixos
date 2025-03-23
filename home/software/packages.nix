{ pkgs, ... }:

{
  home.packages = with pkgs; [
    qbittorrent
    galaxy-buds-client
  ];
}
