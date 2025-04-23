{ pkgs, ... }:

{
  programs.bat = {
    enable = true;
    config = {
      theme = "gruvbox-dark";
      paging = "never";
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
