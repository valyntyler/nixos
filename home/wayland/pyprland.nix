{ pkgs, config, ... }:

{
  home.packages = with pkgs; [ pyprland ];
  home.file."${config.xdg.configHome}/hypr/pyprland.toml".text = builtins.readFile ./pyprland.toml;
}
