{ pkgs, ... }:

{
  home.packages = with pkgs; [ grim ];

  home.sessionVariables = {
    GRIM_DEFAULT_DIR = "~/Pictures/Screenshots/";
  };
}
