{ pkgs, ... }:

{
  programs.nushell = {
    enable = true;
    plugins = [ pkgs.nushellPlugins.formats ];
    settings = {
      show_banner = false;
    };
    extraConfig = "${pkgs.nitch}/bin/nitch";
  };
}
