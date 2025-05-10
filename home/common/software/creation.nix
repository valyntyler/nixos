{pkgs, ...}: {
  home.packages = with pkgs; [
    blender
    freecad
    gimp3
    inkscape
    krita

    # unfree
    davinci-resolve
    reaper
  ];
}
