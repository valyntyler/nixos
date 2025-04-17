{ pkgs, ... }:

{
  programs.nushell = {
    enable = true;
    plugins = [ pkgs.nushellPlugins.formats ];
    settings = {
      edit_mode = "vi";
      show_banner = false;
      completions.external = {
        enable = true;
        max_results = 200;
      };
    };
    extraConfig = "${pkgs.nitch}/bin/nitch";
  };
}
