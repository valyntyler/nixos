{pkgs, ...}: {
  home.packages = with pkgs; [
    blender
    freecad
    gimp3
    inkscape
    krita
    obs-studio

    # music
    guitarix
    qjackctl

    # less-than-libre
    ardour
    aseprite
    audacity
    musescore
    zrythm

    # unfree
    davinci-resolve
    reaper
  ];
}
