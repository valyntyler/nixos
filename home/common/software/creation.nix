{pkgs, ...}: {
  home.packages = with pkgs; [
    aseprite
    audacity
    blender
    freecad
    gimp3
    inkscape
    krita
    musescore

    # unfree
    davinci-resolve
    reaper
  ];
}
