{ pkgs, ... }:

{
  home.packages = with pkgs; [
    freecad
    gimp
    inkscape
    krita
  ];
}
