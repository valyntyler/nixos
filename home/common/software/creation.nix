{pkgs, ...}: {
  home.packages = with pkgs; [
    blender
    freecad
    gimp3
    inkscape
    krita

    # less-than-libre
    ardour
    aseprite
    audacity
    musescore

    # unfree
    davinci-resolve
    reaper
  ];
}
