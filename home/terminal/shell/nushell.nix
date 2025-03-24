{ pkgs, ... }:

{
  programs.nushell.enable = true;
  programs.nushell.plugins = [ pkgs.nushellPlugins.formats ];
}
