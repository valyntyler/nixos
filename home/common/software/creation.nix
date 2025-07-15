{pkgs, ...}: {
  home.packages = with pkgs; [
    blender
    freecad
    gimp3
    inkscape
    krita

    # music
    guitarix
    qjackctl

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
