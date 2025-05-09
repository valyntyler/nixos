{pkgs, ...}: {
  home.packages = with pkgs; [
    blender
    freecad
    gimp
    inkscape
    krita
  ];
}
