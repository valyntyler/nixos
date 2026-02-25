{pkgs, ...}: {
  home.packages = with pkgs; [
    blender
    freecad
    gimp3
    inkscape
    krita
    lmms
    material-maker
    obs-studio

    aseprite
    audacity
    musescore

    # davinci-resolve
    reaper
  ];
}
