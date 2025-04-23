{ pkgs, ... }:

{
  programs.bat = {
    enable = true;
    config = {
      theme = "gruvbox-dark";
      map-syntax = [
        "*.ino:C++"
        ".ignore:Git Ignore"
      ];
    };
    extraPackages = with pkgs.bat-extras; [
      batgrep 
      batman 
      batpipe
      batwatch
      batdiff
      prettybat
    ];
  };
}
